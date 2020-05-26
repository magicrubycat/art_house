class ArtifactsController < ApplicationController
  #skip_before_action :authenticate_user!, only: index, show
  before_action :set_artifact, only: [:show]

  def index
    @artifacts = Artifact.all
  end

  def show
  end

=begin
  def new
    @artifact = Artifact.new
  end

  def create
    @artifact = Artifact.new(artifact_params)
    if @artifact.save
      redirect_to artifact_path(@artifact)
    else
      render :new
    end
  end
=end

  def destroy

  end

  private

  def set_artifact
    @artifact = Artifact.find(params[:id])
  end

  # def artifacts_params
  #   params.require(:artifact).permit(:name, :artist, :year, :description, :starting_value, :sold)
  # end

end
