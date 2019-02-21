class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @request = Request.all
  end

  def show
    @requests = Request.where(user: current_user)
  end

  def new
    @request = Request.new
    @gear = Gear.find(params[:gear_id])
  end

  def create
    @request = Request.new(request_params)
    @gear = Gear.find(params[:gear_id])
    @request.user = current_user
    @request.gear = @gear

    if @request.save
      redirect_to gear_request_path(@gear, @request)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @request.update(params[:request])
    # @request.gear.user(params[:request])
  end

  def destroy
    @request.destroy
  end

  private

  def request_params
    params.require(:request).permit(:gear_id, :user_id, :start, :end)
  end

  def set_request
    @request = Request.find(params[:id])
  end
end
