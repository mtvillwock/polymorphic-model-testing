class StartupsController < ApplicationController
  def create
    p params
    @startup = Startup.new(name: params[:name])
    if @startup.save
      p @profile = Profile.new(description: params[:description],
                               profileable_id: @startup.id,
                               profileable_type: @startup.class.name).save
      p @location = Location.new(city: params[:city],
                                locationable_id: @startup.id,
                                locationable_type: @startup.class.name).save
    else
      p "startup didn't save"
    end
    redirect_to '/'
  end
end
