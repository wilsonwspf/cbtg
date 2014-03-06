class PagamentosController < ApplicationController
  before_action :set_pagamento, only: [:show, :edit, :update, :destroy]

  # GET /pagamentos
  # GET /pagamentos.json
  def index
    if params[:filtro] == 'dia'
      @pagamentos = Pagamento.where(dtpgto: Date.today)
    elsif params[:filtro] == 'mes'
      @pagamentos = Pagamento.where(dtpgto: ((Date.today)..Date.today + 1.month))
    elsif params[:filtro] == 'amanha'
      @pagamentos = Pagamento.where(dtpgto: (Date.today + 1.day))

    else
      @pagamentos = Pagamento.all
    end

  end

  # GET /pagamentos/1
  # GET /pagamentos/1.json
  def show
  end

  # GET /pagamentos/new
  def new
    @pagamento = Pagamento.new
  end

  # GET /pagamentos/1/edit
  def edit
  end

  # POST /pagamentos
  # POST /pagamentos.json
  def create
    @pagamento = Pagamento.new(pagamento_params)

    respond_to do |format|
      if @pagamento.save
        format.html { redirect_to @pagamento, notice: 'Pagamento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pagamento }
      else
        format.html { render action: 'new' }
        format.json { render json: @pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagamentos/1
  # PATCH/PUT /pagamentos/1.json
  def update
    respond_to do |format|
      if @pagamento.update(pagamento_params)
        format.html { redirect_to @pagamento, notice: 'Pagamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagamentos/1
  # DELETE /pagamentos/1.json
  def destroy
    @pagamento.destroy
    respond_to do |format|
      format.html { redirect_to pagamentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagamento
      @pagamento = Pagamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pagamento_params
      params.require(:pagamento).permit(:vencimento, :quem, :valor, :dtpgto, :tipopgto)
    end
end
