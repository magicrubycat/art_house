class BidsController < ApplicationController

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

  def destroy
    @bid.destroy
    authorize @bid

    redirect_to artifacts_path
  end


  private

  def bids_params
    params.require(:bid).permit(:value)
  end
end
