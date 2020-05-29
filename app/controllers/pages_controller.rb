class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def dashboard
      @artifacts = current_user.artifacts
      @outgoing_bids = current_user.bids
      @incoming_bids = Bid.where(artifact_id: @artifacts.pluck(:id))
  end

  def about
  end

end
