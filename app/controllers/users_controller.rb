class UsersController < ApplicationController
  def create
    p params
    p @startup = Startup.find_by(name: params[:startup_name])
    p @user = User.new(name: params[:name], startup_id: @startup.id)
    if @user.save
      p @user.profile.new(description: params[:description],
                               profileable_id: @user.id,
                               profileable_type: @user.class.name).save
      p @user.location.new(description: params[:city],
                                locationable_id: @user.id,
                                locationable_type: @user.class.name).save
    else
      p "user didn't save"
    end
    redirect_to '/'
  end
end
