class StartupController < ApplicationController
  def create
    @startup = Startup.new(name: params[:name])
    if @startup.save
      @profile = Profile.new(description: params[:description],
                               profileable_id: @startup.id,
                               profileable_type: @startup.class.name).save
      @location = Location.new(city: params[:city],
                                locationable_id: @startup.id,
                                locationable_type: @startup.class.name).save
    else
      render json: { error: "startup failed to save"}
    end
    redirect_to '/'
  end
end
