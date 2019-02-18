class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  def index
    @request = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(requests_params)

    if @request.save
      redirect_to requests_path(@request)
    else
      render :new
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update(params[:request])
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
  end

  private

  def requests_params
    params.require(:request).permit(:id, :gear_id, :user_id)
  end

  def set_request
    @request = Request.find(params[:id])
  end
end
