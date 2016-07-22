class ObjectiveImagesController < ApplicationController
  before_action :set_objective_image, only: [:show, :edit, :update, :destroy]

  # GET /objective_images
  # GET /objective_images.json
  def index
    @objective_images = ObjectiveImage.all
  end

  # GET /objective_images/1
  # GET /objective_images/1.json
  def show
  end

  # GET /objective_images/new
  def new
    @objective_image = ObjectiveImage.new
  end

  # GET /objective_images/1/edit
  def edit
  end

  # POST /objective_images
  # POST /objective_images.json
  def create
    @objective_image = ObjectiveImage.new(objective_image_params)

    respond_to do |format|
      if @objective_image.save
        format.html { redirect_to @objective_image, notice: 'Objective image was successfully created.' }
        format.json { render :show, status: :created, location: @objective_image }
      else
        format.html { render :new }
        format.json { render json: @objective_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objective_images/1
  # PATCH/PUT /objective_images/1.json
  def update
    respond_to do |format|
      if @objective_image.update(objective_image_params)
        format.html { redirect_to @objective_image, notice: 'Objective image was successfully updated.' }
        format.json { render :show, status: :ok, location: @objective_image }
      else
        format.html { render :edit }
        format.json { render json: @objective_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objective_images/1
  # DELETE /objective_images/1.json
  def destroy
    @objective_image.destroy
    respond_to do |format|
      format.html { redirect_to objective_images_url, notice: 'Objective image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objective_image
      @objective_image = ObjectiveImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objective_image_params
      params.require(:objective_image).permit(:lesson, :statement, :aimg, :bimg, :cimg)
    end
end
