class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy, :accept, :decline]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @requests = Request.all
  end

  def show
    @request = Request.where(user: current_user)
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
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @request.update(params[:request])
  end

  def accept
    @gear = @request.gear_id
    @request.status = "accepted"
    @request.save

    redirect_to gear_request_path(@gear, @request)
  end

  def decline
    @gear = @request.gear_id
    @request.status = "declined"
    @request.save
    redirect_to gear_request_path(@gear, @request)
  end

  def destroy
    @request.destroy
  end

  private

  def request_params
    params.require(:request).permit(:gear_id, :user_id, :start, :end, :status)
  end

  def set_request
    @request = Request.find(params[:id])
  end
end
