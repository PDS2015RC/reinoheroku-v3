class DragDropsController < ApplicationController
  before_action :set_drag_drop, only: [:show, :edit, :update, :destroy]

  # GET /drag_drops
  # GET /drag_drops.json
  def index
    @drag_drops = DragDrop.all
  end

  # GET /drag_drops/1
  # GET /drag_drops/1.json
  def show
  end

  # GET /drag_drops/new
  def new
    @drag_drop = DragDrop.new
  end

  # GET /drag_drops/1/edit
  def edit
  end

  # POST /drag_drops
  # POST /drag_drops.json
  def create
    @drag_drop = DragDrop.new(drag_drop_params)

    respond_to do |format|
      if @drag_drop.save
        format.html { redirect_to @drag_drop, notice: 'Drag drop was successfully created.' }
        format.json { render :show, status: :created, location: @drag_drop }
      else
        format.html { render :new }
        format.json { render json: @drag_drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drag_drops/1
  # PATCH/PUT /drag_drops/1.json
  def update
    respond_to do |format|
      if @drag_drop.update(drag_drop_params)
        format.html { redirect_to @drag_drop, notice: 'Drag drop was successfully updated.' }
        format.json { render :show, status: :ok, location: @drag_drop }
      else
        format.html { render :edit }
        format.json { render json: @drag_drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drag_drops/1
  # DELETE /drag_drops/1.json
  def destroy
    @drag_drop.destroy
    respond_to do |format|
      format.html { redirect_to drag_drops_url, notice: 'Drag drop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drag_drop
      @drag_drop = DragDrop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drag_drop_params
      params.require(:drag_drop).permit(:lesson, :statement, :a, :b, :c, :d, :atitle, :btitle, :ctitle, :dtitle)
    end
end
