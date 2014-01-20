class CtgsController < ApplicationController
  before_action :set_ctg, only: [:show, :edit, :update, :destroy]

  # GET /ctgs
  def index
    @ctgs = Ctg.all
  end

  # GET /ctgs/1
  def show
  end

  # GET /ctgs/new
  def new
    @ctg = Ctg.new
  end

  # GET /ctgs/1/edit
  def edit
  end

  # POST /ctgs
  def create
    @ctg = Ctg.new(ctg_params)

    if @ctg.save
      redirect_to @ctg, notice: 'Ctg was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /ctgs/1
  def update
    if @ctg.update(ctg_params)
      redirect_to @ctg, notice: 'Ctg was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /ctgs/1
  def destroy
    @ctg.destroy
    redirect_to ctgs_url, notice: 'Ctg was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ctg
      @ctg = Ctg.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ctg_params
      params.require(:ctg).permit(:name, :matricula, :dtmatricula, :endereco, :bairro, :cep, :cidade, :uf, :telefone, :celular, :email, :url, :cnpj, :dtfundacao, :patrao, :obs, :rt_id)
    end
end
