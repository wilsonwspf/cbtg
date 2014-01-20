class TpevesController < ApplicationController
  before_action :set_tpeve, only: [:show, :edit, :update, :destroy]

  # GET /tpeves
  def index
    @tpeves = Tpeve.all
  end

  # GET /tpeves/1
  def show
  end

  # GET /tpeves/new
  def new
    @tpeve = Tpeve.new
  end

  # GET /tpeves/1/edit
  def edit
  end

  # POST /tpeves
  def create
    @tpeve = Tpeve.new(tpeve_params)

    if @tpeve.save
      redirect_to @tpeve, notice: 'Tpeve was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /tpeves/1
  def update
    if @tpeve.update(tpeve_params)
      redirect_to @tpeve, notice: 'Tpeve was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /tpeves/1
  def destroy
    @tpeve.destroy
    redirect_to tpeves_url, notice: 'Tpeve was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tpeve
      @tpeve = Tpeve.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tpeve_params
      params.require(:tpeve).permit(:name)
    end
end
