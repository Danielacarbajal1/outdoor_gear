class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present? || params[:category].present?
      gear_query = "name ILIKE :query OR description ILIKE :query"
      @gears = Gear.where(gear_query, query: "%#{params[:query]}%")
      @gears = @gears.where("category ILIKE :category", category: "%#{params[:category]}%")
    else
    @gears = Gear.all
  end

    @markers = @gears.map do |gear|
      next if gear.user.address.nil?
      user = gear.user
      {
        lat: user.latitude,
        lng: user.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        # Uncomment the above line if you want each of your markers to display a info window when clicked
        # (you will also need to create the partial "/flats/map_box")
      }
    end
  end

  def show
    @request = Request.new
  end

  def new
    @gear = Gear.new
  end

  def create
    @gear = Gear.new(gear_params)
    @gear.user = current_user
    if @gear.save!
      redirect_to gear_path(@gear)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @gear.update(params[:gear])
  end

  def destroy
    @gear.destroy
    redirect_to profile_path
  end

  private

  def gear_params
    params.require(:gear).permit(:query, :name, :price, :category, :description, :photo, :categories_attributes => :name)
  end

  def set_gear
    @gear = Gear.find(params[:id])
  end
end
