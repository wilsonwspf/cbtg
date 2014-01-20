class TiposocsController < ApplicationController
  before_action :set_tiposoc, only: [:show, :edit, :update, :destroy]

  # GET /tiposocs
  def index
    @tiposocs = Tiposoc.all
  end

  # GET /tiposocs/1
  def show
  end

  # GET /tiposocs/new
  def new
    @tiposoc = Tiposoc.new
  end

  # GET /tiposocs/1/edit
  def edit
  end

  # POST /tiposocs
  def create
    @tiposoc = Tiposoc.new(tiposoc_params)

    if @tiposoc.save
      redirect_to @tiposoc, notice: 'Tiposoc was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /tiposocs/1
  def update
    if @tiposoc.update(tiposoc_params)
      redirect_to @tiposoc, notice: 'Tiposoc was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /tiposocs/1
  def destroy
    @tiposoc.destroy
    redirect_to tiposocs_url, notice: 'Tiposoc was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiposoc
      @tiposoc = Tiposoc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tiposoc_params
      params.require(:tiposoc).permit(:name)
    end
end
