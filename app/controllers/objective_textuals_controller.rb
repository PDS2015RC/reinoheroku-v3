class ObjectiveTextualsController < ApplicationController
  before_action :set_objective_textual, only: [:show, :edit, :update, :destroy]

  # GET /objective_textuals
  # GET /objective_textuals.json
  def index
    @objective_textuals = ObjectiveTextual.all
  end

  # GET /objective_textuals/1
  # GET /objective_textuals/1.json
  def show
  end

  # GET /objective_textuals/new
  def new
    @objective_textual = ObjectiveTextual.new
  end

  # GET /objective_textuals/1/edit
  def edit
  end

  # POST /objective_textuals
  # POST /objective_textuals.json
  def create
    @objective_textual = ObjectiveTextual.new(objective_textual_params)

    respond_to do |format|
      if @objective_textual.save
        format.html { redirect_to @objective_textual, notice: 'Objective textual was successfully created.' }
        format.json { render :show, status: :created, location: @objective_textual }
      else
        format.html { render :new }
        format.json { render json: @objective_textual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objective_textuals/1
  # PATCH/PUT /objective_textuals/1.json
  def update
    respond_to do |format|
      if @objective_textual.update(objective_textual_params)
        format.html { redirect_to @objective_textual, notice: 'Objective textual was successfully updated.' }
        format.json { render :show, status: :ok, location: @objective_textual }
      else
        format.html { render :edit }
        format.json { render json: @objective_textual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objective_textuals/1
  # DELETE /objective_textuals/1.json
  def destroy
    @objective_textual.destroy
    respond_to do |format|
      format.html { redirect_to objective_textuals_url, notice: 'Objective textual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objective_textual
      @objective_textual = ObjectiveTextual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objective_textual_params
      params.require(:objective_textual).permit(:lesson, :statement, :a, :b, :c, :d)
    end
end
