class SubjectiveTextualsController < ApplicationController
  before_action :set_subjective_textual, only: [:show, :edit, :update, :destroy]

  # GET /subjective_textuals
  # GET /subjective_textuals.json
  def index
    @subjective_textuals = SubjectiveTextual.all
  end

  # GET /subjective_textuals/1
  # GET /subjective_textuals/1.json
  def show
  end

  # GET /subjective_textuals/new
  def new
    @subjective_textual = SubjectiveTextual.new
  end

  # GET /subjective_textuals/1/edit
  def edit
  end

  # POST /subjective_textuals
  # POST /subjective_textuals.json
  def create
    @subjective_textual = SubjectiveTextual.new(subjective_textual_params)

    respond_to do |format|
      if @subjective_textual.save
        format.html { redirect_to @subjective_textual, notice: 'Subjective textual was successfully created.' }
        format.json { render :show, status: :created, location: @subjective_textual }
      else
        format.html { render :new }
        format.json { render json: @subjective_textual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjective_textuals/1
  # PATCH/PUT /subjective_textuals/1.json
  def update
    respond_to do |format|
      if @subjective_textual.update(subjective_textual_params)
        format.html { redirect_to @subjective_textual, notice: 'Subjective textual was successfully updated.' }
        format.json { render :show, status: :ok, location: @subjective_textual }
      else
        format.html { render :edit }
        format.json { render json: @subjective_textual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjective_textuals/1
  # DELETE /subjective_textuals/1.json
  def destroy
    @subjective_textual.destroy
    respond_to do |format|
      format.html { redirect_to subjective_textuals_url, notice: 'Subjective textual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subjective_textual
      @subjective_textual = SubjectiveTextual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subjective_textual_params
      params.require(:subjective_textual).permit(:lesson, :statement, :answer)
    end
end
