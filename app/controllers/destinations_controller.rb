class DestinationsController < ApplicationController

  def show
    link = Link.find_by entry: params['entry']
    redirect_to link.destination
  end

end
