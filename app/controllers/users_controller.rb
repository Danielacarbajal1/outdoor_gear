class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)

    if @user.save
      redirect_to users_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def users_params
    params.require(:user).permit(:id, :first_name, :last_name, :adress_mail, :phone_number, :adress)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
