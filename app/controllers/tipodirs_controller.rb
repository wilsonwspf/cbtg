class TipodirsController < ApplicationController
  before_action :set_tipodir, only: [:show, :edit, :update, :destroy]

  # GET /tipodirs
  def index
    @tipodirs = Tipodir.all
  end

  # GET /tipodirs/1
  def show
  end

  # GET /tipodirs/new
  def new
    @tipodir = Tipodir.new
  end

  # GET /tipodirs/1/edit
  def edit
  end

  # POST /tipodirs
  def create
    @tipodir = Tipodir.new(tipodir_params)

    if @tipodir.save
      redirect_to @tipodir, notice: 'Tipodir was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /tipodirs/1
  def update
    if @tipodir.update(tipodir_params)
      redirect_to @tipodir, notice: 'Tipodir was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /tipodirs/1
  def destroy
    @tipodir.destroy
    redirect_to tipodirs_url, notice: 'Tipodir was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipodir
      @tipodir = Tipodir.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipodir_params
      params.require(:tipodir).permit(:name)
    end
end
