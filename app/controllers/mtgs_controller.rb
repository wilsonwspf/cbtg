class MtgsController < ApplicationController
  before_action :set_mtg, only: [:show, :edit, :update, :destroy]

  # GET /mtgs
  def index
    if params[:busca].present?
      @mtgs = Mtg.where("name LIKE ?", "%#{params[:busca][:name]}%")
    else
      @mtgs = Mtg.all
    end
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
      redirect_to @mtg, notice: 'Mtg was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /mtgs/1
  def update
    if @mtg.update(mtg_params)
      redirect_to @mtg, notice: 'Mtg was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /mtgs/1
  def destroy
    @mtg.destroy
    redirect_to mtgs_url, notice: 'Mtg was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mtg
      @mtg = Mtg.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mtg_params
      params.require(:mtg).permit(:name, :end, :bairro, :cidade, :uf, :cep, :url, :email, :tel1, :tel2, :cel, :fundacao, :filiacao, :logo, :endcor, :bairrocor, :cepcor, :cidadecor, :ufcor, :cnpj, :obs)
    end
end
