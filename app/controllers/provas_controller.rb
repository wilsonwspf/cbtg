class ProvasController < ApplicationController
  before_action :set_prova, only: [:show, :edit, :update, :destroy]

  # GET /provas
  def index
    @provas = Prova.all
  end

  # GET /provas/1
  def show
  end

  # GET /provas/new
  def new
    @prova = Prova.new
  end

  # GET /provas/1/edit
  def edit
  end

  # POST /provas
  def create
    @prova = Prova.new(prova_params)

    if @prova.save
      redirect_to @prova, notice: 'Prova was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /provas/1
  def update
    if @prova.update(prova_params)
      redirect_to @prova, notice: 'Prova was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /provas/1
  def destroy
    @prova.destroy
    redirect_to provas_url, notice: 'Prova was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prova
      @prova = Prova.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prova_params
      params.require(:prova).permit(:name)
    end
end
