class WelcomeController < ApplicationController
  def index
    @startup = Startup.new
    @user = User.new
    @startups = Startup.all
    @users = User.all
    render :index
  end
end
