class PagesController < ApplicationController
  def home
    @gears = Gear.all
  end

  def index
    @gears = @current_user.gears
  end

  def profile
    @gears = Gear.where(user_id: current_user)
  end

  private

  def request_params
    params.require(:gear).permit(:user_id)
  end
end
