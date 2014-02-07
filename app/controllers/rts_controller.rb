class RtsController < ApplicationController
  before_action :set_rt, only: [:show, :edit, :update, :destroy]

  # GET /rts
  def index
    if params[:busca].present?
      @rts = Rt.where("name LIKE ?", "%#{params[:busca][:name]}%")
    else
      @rts = Rt.all
    end
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
      redirect_to @rt, notice: 'Rt was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /rts/1
  def update
    if @rt.update(rt_params)
      redirect_to @rt, notice: 'Rt was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /rts/1
  def destroy
    @rt.destroy
    redirect_to rts_url, notice: 'Rt was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rt
      @rt = Rt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rt_params
      params.require(:rt).permit(:name, :end, :bairro, :cidade, :uf, :cep, :url, :email, :tel1, :tel2, :cel, :fundacao, :filiacao, :logo, :endcor, :bairrocor, :cepcor, :cidadecor, :ufcor, :cnpj, :obs, :mtg_id)
    end
end
