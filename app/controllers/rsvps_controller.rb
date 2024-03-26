class RsvpsController < ApplicationController

  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save!
      redirect_to root_path, notice: "Thanks for submitting your response!"
    else
      redirect_to root_path, alert: "Unable to save response, please try again!"
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