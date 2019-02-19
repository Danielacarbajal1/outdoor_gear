class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @requests = Request.all
  end

  def show
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
      # raise
      # redirect_to gear_request_path(@request)
      redirect_to root_path
    else
    # raise
      render :new
    end
  end

  def edit
  end

  def update
    @request.update(params[:request])
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
