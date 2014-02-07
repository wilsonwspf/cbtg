class PiquetesController < ApplicationController
  before_action :set_piquete, only: [:show, :edit, :update, :destroy]

  # GET /piquetes
  def index
    @piquetes = Piquete.all
  end

  # GET /piquetes/1
  def show
  end

  # GET /piquetes/new
  def new
    @piquete = Piquete.new
  end

  # GET /piquetes/1/edit
  def edit
  end

  # POST /piquetes
  def create
    @piquete = Piquete.new(piquete_params)

    if @piquete.save
      redirect_to @piquete, notice: 'Piquete was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /piquetes/1
  def update
    if @piquete.update(piquete_params)
      redirect_to @piquete, notice: 'Piquete was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /piquetes/1
  def destroy
    @piquete.destroy
    redirect_to piquetes_url, notice: 'Piquete was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piquete
      @piquete = Piquete.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def piquete_params
      params.require(:piquete).permit(:name, :ctg_id)
    end
end
