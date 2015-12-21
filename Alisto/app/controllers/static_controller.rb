class StaticController < ApplicationController
  def index
  	@points = AnonReport.all
  end
  def crime_map
  end
end
