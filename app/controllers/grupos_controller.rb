class GruposController < ApplicationController
  before_action :set_grupo, only: [:show, :edit, :update, :destroy]

  # GET /grupos
  def index
    @grupos = Grupo.all
  end

  # GET /grupos/1
  def show
  end

  # GET /grupos/new
  def new
    @grupo = Grupo.new
  end

  # GET /grupos/1/edit
  def edit
  end

  # POST /grupos
  def create
    @grupo = Grupo.new(grupo_params)

    if @grupo.save
      redirect_to @grupo, notice: 'Grupo was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /grupos/1
  def update
    if @grupo.update(grupo_params)
      redirect_to @grupo, notice: 'Grupo was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /grupos/1
  def destroy
    @grupo.destroy
    redirect_to grupos_url, notice: 'Grupo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo
      @grupo = Grupo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grupo_params
      params.require(:grupo).permit(:name)
    end
end
