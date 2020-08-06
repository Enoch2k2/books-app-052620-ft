class StaticController < ApplicationController
  # layout "landing_layout" used for all actions
  
  def home
    render layout: "landing_layout"
  end
end
