class UsersController < ApplicationController
  def create
    @startup = Startup.find_by(name: params[:startup_name])
    @user = User.new(name: params[:name], startup_id: @startup.id)
    if @user.save
      @profile = Profile.new(description: params[:description],
                               profileable_id: @user.id,
                               profileable_type: @user.class.name).save
      @location = Location.new(city: params[:city],
                                locationable_id: @user.id,
                                locationable_type: @user.class.name).save
    else
      render json: { error: "startup failed to save"}
    end
    redirect_to '/'
  end
end
