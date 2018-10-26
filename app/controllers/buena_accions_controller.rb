class BuenaAccionsController < ApplicationController
  before_action :set_buena_accion, only: [:show, :update, :destroy]

  # GET /buena_accions
  def index
    @buena_accions = BuenaAccion.all

    render json: @buena_accions
  end

  # GET /buena_accions/1
  def show
    render json: @buena_accion
  end

  # POST /buena_accions
  def create
    @buena_accion = BuenaAccion.new(buena_accion_params)

    if @buena_accion.save
      render json: @buena_accion, status: :created, location: @buena_accion
    else
      render json: @buena_accion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /buena_accions/1
  def update
    if @buena_accion.update(buena_accion_params)
      render json: @buena_accion
    else
      render json: @buena_accion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /buena_accions/1
  def destroy
    @buena_accion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buena_accion
      @buena_accion = BuenaAccion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def buena_accion_params
      params.require(:buena_accion).permit(:descripcion, :puntaje, :remitente_id, :receptor_id)
    end
end
