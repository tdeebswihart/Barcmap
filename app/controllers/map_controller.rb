class MapController < ApplicationController
  
  before_filter :require_user
  def index
    @locations = Location.all
  end
  
  def intro
    #@locations = Location.all
  end

end
