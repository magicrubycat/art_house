class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def dashboard
    if current_user.artifacts.any?
      @artifacts = current_user.artifacts
      #@incoming_bids = Bid.where(artifact_id: @artifacts.pluck(:id))
    else
      @artifacts = []
    end
  end

  def about
  end

end
