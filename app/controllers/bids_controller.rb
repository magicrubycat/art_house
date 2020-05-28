class BidsController < ApplicationController
  before_action :set_bid, only: [ :accept, :reject ]

  def new
    @artifact = Artifact.find(params[:artifact_id])
    @bid = Bid.new
    @bid.artifact = @artifact
    authorize @bid
  end

  def create
    @bid = Bid.new(bids_params)
    @artifact = Artifact.find(params[:artifact_id])
    @bid.user = current_user
    @bid.artifact = @artifact
    authorize @bid
    if @bid.save
      redirect_to artifact_path(@artifact)
    else
      render :new
    end
  end

  def accept
    @artifact = @bid.artifact
    @bid.status = "accepted"
    @artifact.bids.each do |bid|
      unless bid == @bid
        bid.status = "rejected"
        bid.save
      end
    end
    @bid.save

    redirect_to dashboard_path
  end

  def reject
    @artifact = @bid.artifact
    @bid.status = "reject"
    @bid.save

    redirect_to dashboard_path
  end

  def destroy
    @bid.destroy
    authorize @bid

    redirect_to artifacts_path
  end


  private

  def bids_params
    params.require(:bid).permit(:value)
  end

  def set_bid
    @bid = Bid.find(params[:id])
  end
end
