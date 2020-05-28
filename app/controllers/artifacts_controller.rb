class ArtifactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_artifact, only: [:show, :update, :destroy]

  def index
    if params[:query].present?
      @artifacts = policy_scope(Artifact).search_by_all_attributes(params[:query]).where(sold: false)
    else
      @artifacts = policy_scope(Artifact).where(sold: false)
    end
  end

  def show
    @bids = Bid.where(params[:artifact_id])
    @bid = Bid.new
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
    else
      render :new
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
