class ParteCuerposController < ApplicationController
  before_action :set_parte_cuerpo, only: [:show, :edit, :update, :destroy]

  # GET /parte_cuerpos
  # GET /parte_cuerpos.json
  def index
    @parte_cuerpos = ParteCuerpo.all
  end

  # GET /parte_cuerpos/1
  # GET /parte_cuerpos/1.json
  def show
  end

  # GET /parte_cuerpos/new
  def new
    @parte_cuerpo = ParteCuerpo.new
  end

  # GET /parte_cuerpos/1/edit
  def edit
  end

  # POST /parte_cuerpos
  # POST /parte_cuerpos.json
  def create
    @parte_cuerpo = ParteCuerpo.new(parte_cuerpo_params)

    respond_to do |format|
      if @parte_cuerpo.save
        format.html { redirect_to @parte_cuerpo, notice: 'Parte cuerpo was successfully created.' }
        format.json { render :show, status: :created, location: @parte_cuerpo }
      else
        format.html { render :new }
        format.json { render json: @parte_cuerpo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parte_cuerpos/1
  # PATCH/PUT /parte_cuerpos/1.json
  def update
    respond_to do |format|
      if @parte_cuerpo.update(parte_cuerpo_params)
        format.html { redirect_to @parte_cuerpo, notice: 'Parte cuerpo was successfully updated.' }
        format.json { render :show, status: :ok, location: @parte_cuerpo }
      else
        format.html { render :edit }
        format.json { render json: @parte_cuerpo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parte_cuerpos/1
  # DELETE /parte_cuerpos/1.json
  def destroy
    @parte_cuerpo.destroy
    respond_to do |format|
      format.html { redirect_to parte_cuerpos_url, notice: 'Parte cuerpo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parte_cuerpo
      @parte_cuerpo = ParteCuerpo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parte_cuerpo_params
      params.require(:parte_cuerpo).permit(:nombre)
    end
end
