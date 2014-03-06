class OcurrencesController < ApplicationController
  before_action :set_ocurrence, only: [:show, :edit, :update, :destroy]

  # GET /ocurrences
  def index
    @ocurrences = Ocurrence.all
  end

  # GET /ocurrences/1
  def show
  end

  # GET /ocurrences/new
  def new
    @ocurrence = Ocurrence.new
  end

  # GET /ocurrences/1/edit
  def edit
  end

  # POST /ocurrences
  def create
    @ocurrence = Ocurrence.new(ocurrence_params)

    if @ocurrence.save
      redirect_to @ocurrence, notice: 'Ocurrence was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /ocurrences/1
  def update
    if @ocurrence.update(ocurrence_params)
      redirect_to @ocurrence, notice: 'Ocurrence was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /ocurrences/1
  def destroy
    @ocurrence.destroy
    redirect_to ocurrences_url, notice: 'Ocurrence was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocurrence
      @ocurrence = Ocurrence.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ocurrence_params
      params.require(:ocurrence).permit(:data, :descricao, :member_id)
    end
end
