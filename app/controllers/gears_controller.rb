class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @gears = Gear.all

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
    params.require(:gear).permit(:name, :price, :category, :description, :photo)
  end

  def set_gear
    @gear = Gear.find(params[:id])
  end
end
