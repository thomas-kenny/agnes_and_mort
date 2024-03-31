class RsvpsController < ApplicationController

  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save!
      redirect_to root_path(submitted: 'true', attending: @rsvp.attending?)
    else
      redirect_to root_path(submitted: 'false')
    end
  end

  def index
    @rsvps = Rsvp.all
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(
      :name,
      :attending,
      :dietary_requirements,
      :email
    )
  end
end