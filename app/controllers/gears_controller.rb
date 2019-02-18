class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :update, :destroy]

  def index
    @gears = Gear.all
  end

  def show
  end

  def new
    @gear = Gear.new
  end

  def create
    if @gear.save
      redirect_to gears_path(@gear)
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
  end

  private

  def gears_params
    params.require(:gear).permit(:id, :user_id, :name, :price, :category, :size)
  end

  def set_gear
    @gear = Gear.find(params[:id])
  end
end
