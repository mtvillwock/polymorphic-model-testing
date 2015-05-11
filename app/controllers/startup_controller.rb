class StartupController < ApplicationController
  def create
    p params
    @startup = Startup.new(name: params[:name])
    if @startup.save
      @startup.profile.create!(description: params[:description],
                               profileable_id: @startup.id,
                               profileable_type: @startup.class.name)
      @startup.location.create!(description: params[:city],
                                locationable_id: @startup.id,
                                locationable_type: @startup.class.name)
    else
      p "startup didn't save"
    end
    redirect_to '/'
  end
end
