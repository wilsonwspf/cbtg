class ModalidadesController < ApplicationController
  before_action :set_modalidade, only: [:show, :edit, :update, :destroy]

  # GET /modalidades
  def index
    @modalidades = Modalidade.all
  end

  # GET /modalidades/1
  def show
  end

  # GET /modalidades/new
  def new
    @modalidade = Modalidade.new
  end

  # GET /modalidades/1/edit
  def edit
  end

  # POST /modalidades
  def create
    @modalidade = Modalidade.new(modalidade_params)

    if @modalidade.save
      redirect_to @modalidade, notice: 'Modalidade was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /modalidades/1
  def update
    if @modalidade.update(modalidade_params)
      redirect_to @modalidade, notice: 'Modalidade was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /modalidades/1
  def destroy
    @modalidade.destroy
    redirect_to modalidades_url, notice: 'Modalidade was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modalidade
      @modalidade = Modalidade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def modalidade_params
      params.require(:modalidade).permit(:name)
    end
end
