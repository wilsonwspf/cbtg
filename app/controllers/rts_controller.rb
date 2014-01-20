class RtsController < ApplicationController
  before_action :set_rt, only: [:show, :edit, :update, :destroy]

  # GET /rts
  def index
    @rts = Rt.all
  end

  # GET /rts/1
  def show
  end

  # GET /rts/new
  def new
    @rt = Rt.new
  end

  # GET /rts/1/edit
  def edit
  end

  # POST /rts
  def create
    @rt = Rt.new(rt_params)

    if @rt.save
      redirect_to @rt, notice: 'RT criada com sucesso.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /rts/1
  def update
    if @rt.update(rt_params)
      redirect_to @rt, notice: 'RT atualizada com sucesso.'
    else
      render action: 'edit'
    end
  end

  # DELETE /rts/1
  def destroy
    @rt.destroy
    redirect_to rts_url, notice: 'RT deletad com sucesso.'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rt
      @rt = Rt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rt_params
      params.require(:rt).permit(:name, :matricula, :dtmatricula, :endereco, :bairro, :cep, :cidade, :uf, :telefone, :celular, :email, :url, :cnpj, :dtfundacao, :coordenador, :obs, :mtg_id)
    end
end
