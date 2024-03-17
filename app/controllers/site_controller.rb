class SiteController < ApplicationController

  def home
    @rsvp = Rsvp.new
  end
end