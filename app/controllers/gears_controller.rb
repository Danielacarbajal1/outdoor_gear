class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :update, :destroy]

  def index
    @gears = Gear.all
  end

  def show
    @gear = Gear.find(params[:id])
  end

  def new
    @gear = Gear.new
  end

  def create
    @gear = Gear.new(gears_params)

    if @gear.save
      redirect_to gears_path(@gear)
    else
      render :new
    end
  end

  def edit
    @gear = Gear.find(params[:id])
  end

  def update
    @gear = Gear.find(params[:id])
    @gear.update(params[:gear])
  end

  def destroy
    @gear = Gear.find(params[:id])
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
