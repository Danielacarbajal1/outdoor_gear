class PagesController < ApplicationController
  def home
    @gears = Gear.all
  end
end
