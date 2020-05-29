class ArtifactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_artifact, only: [:show, :update, :destroy]

  def index
    if params[:search].present? # first go in search then go to query - all this comes from the special form in index because it is a simple_form
      @artifacts = policy_scope(Artifact).search_by_all_attributes(params[:search][:query]).where(sold: false)
    else
      @artifacts = policy_scope(Artifact).where(sold: false)
    end
  end

  def show
    @bids = Bid.where(artifact_id: @artifact.id).order("value DESC").first
    @bid = Bid.new
    if @bids.present?
      if @bids.value < @artifact.starting_value
        flash.now[:notice] = "Your bid is lower than the starting price."
      else
        flash.now[:notice] = "Thanks for your money!"
      end
    end
  end

  def new
    @artifact = Artifact.new
    authorize @artifact
  end

  def create
    @artifact = Artifact.new(artifacts_params)
    @artifact.user = current_user
    authorize @artifact
    if @artifact.save
      redirect_to artifact_path(@artifact), notice: "Artifact has been successfully created."
    end
  end

  def update
    @artifact = Artifact.update(artifacts_params)
    @artifact.save
  end

  def destroy
    @artifact.destroy

    redirect_to artifacts_path
  end

  private

  def set_artifact
    @artifact = Artifact.find(params[:id])
    authorize @artifact
  end

  def artifacts_params
    params.require(:artifact).permit(:name, :artist, :year, :description, :starting_value, :sold, :photo)
  end
end
