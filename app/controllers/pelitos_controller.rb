class PelitosController < ApplicationController
  before_action :set_pelito, only: [:show, :edit, :update, :destroy]

  # GET /pelitos
  # GET /pelitos.json
  def index
    @pelitos = Pelito.all
  end

  # GET /pelitos/1
  # GET /pelitos/1.json
  def show
  end

  # GET /pelitos/new
  def new
    @pelito = Pelito.new
  end

  # GET /pelitos/1/edit
  def edit
  end

  # POST /pelitos
  # POST /pelitos.json
  def create
    @pelito = Pelito.new(pelito_params)

    respond_to do |format|
      if @pelito.save
        format.html { redirect_to @pelito, notice: 'Pelito was successfully created.' }
        format.json { render :show, status: :created, location: @pelito }
      else
        format.html { render :new }
        format.json { render json: @pelito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pelitos/1
  # PATCH/PUT /pelitos/1.json
  def update
    respond_to do |format|
      if @pelito.update(pelito_params)
        format.html { redirect_to @pelito, notice: 'Pelito was successfully updated.' }
        format.json { render :show, status: :ok, location: @pelito }
      else
        format.html { render :edit }
        format.json { render json: @pelito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pelitos/1
  # DELETE /pelitos/1.json
  def destroy
    @pelito.destroy
    respond_to do |format|
      format.html { redirect_to pelitos_url, notice: 'Pelito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pelito
      @pelito = Pelito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pelito_params
      params.require(:pelito).permit(:forma, :fecha, :grosor)
    end
end
