class MtgsController < ApplicationController
  before_action :set_mtg, only: [:show, :edit, :update, :destroy, :listar_rts]

  # GET /mtgs
  def index
    @mtgs = Mtg.all
  end

  # GET /mtgs/1
  def show
  end

  # GET /mtgs/new
  def new
    @mtg = Mtg.new
  end

  # GET /mtgs/1/edit
  def edit
  end

  # POST /mtgs
  def create
    @mtg = Mtg.new(mtg_params)

    if @mtg.save
      redirect_to @mtg, notice: 'MTG criado com sucesso.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /mtgs/1
  def update
    if @mtg.update(mtg_params)
      redirect_to @mtg, notice: 'MTG atualizado com sucesso.'
    else
      render action: 'edit'
    end
  end

  # DELETE /mtgs/1
  def destroy
    @mtg.destroy
    redirect_to mtgs_url, notice: 'MTG deletado com sucesso.'
  end

  def listar_rts
    render json: @mtg.rts.select('id,name')
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mtg
      @mtg = Mtg.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mtg_params
      params.require(:mtg).permit(:name, :matricula, :dtmatricula, :endereco, :bairro, :cep, :cidade, :uf, :telefone, :celular, :email, :url, :cnpj, :dtfundacao, :presidente, :obs)
    end
end
