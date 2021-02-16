class Api::V1::ImagesController < ApplicationController
  before_action :set_image, only: [:destroy]

  # GET /api/v1/images
  # GET /api/v1/images.json
  def index
    @images = Image.all
  end

  # GET /api/v1/images/1/edit
  def edit
  end

  # POST /api/v1/images
  # POST /api/v1/images.json
  def create
    @image = Image.new(image_params)
    @image.save!

    render 'api/v1/images/show.json.jbuilder'
  end

  # DELETE /api/v1/images/1
  # DELETE /api/v1/images/1.json
  def destroy
    @image.destroy

    render json: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def image_params
      params.fetch(:image, { }).permit(:src)
    end
end
