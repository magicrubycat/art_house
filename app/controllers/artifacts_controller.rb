class ArtifactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_artifact, only: [:show, :destroy]

  def index
    @artifacts = Artifact.all
  end

  def show
  end

  def new
    @artifact = Artifact.new
  end

  def create
    @artifact = Artifact.new(artifacts_params)
    @artifact.user = current_user
    if @artifact.save
      redirect_to artifact_path(@artifact)
    else
      render :new
    end
  end

  def destroy
    @artifact.destroy

    redirect_to artifacts_path
  end

  private

  def set_artifact
    @artifact = Artifact.find(params[:id])
  end

  def artifacts_params
    params.require(:artifact).permit(:name, :artist, :year, :description, :starting_value, :sold, :photo)
  end

end
