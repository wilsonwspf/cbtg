class TbgruposController < ApplicationController
  before_action :set_tbgrupo, only: [:show, :edit, :update, :destroy]

  # GET /tbgrupos
  def index
    @tbgrupos = Tbgrupo.all
  end

  # GET /tbgrupos/1
  def show
  end

  # GET /tbgrupos/new
  def new
    @tbgrupo = Tbgrupo.new
  end

  # GET /tbgrupos/1/edit
  def edit
  end

  # POST /tbgrupos
  def create
    @tbgrupo = Tbgrupo.new(tbgrupo_params)

    if @tbgrupo.save
      redirect_to @tbgrupo, notice: 'Tbgrupo was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /tbgrupos/1
  def update
    if @tbgrupo.update(tbgrupo_params)
      redirect_to @tbgrupo, notice: 'Tbgrupo was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /tbgrupos/1
  def destroy
    @tbgrupo.destroy
    redirect_to tbgrupos_url, notice: 'Tbgrupo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbgrupo
      @tbgrupo = Tbgrupo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbgrupo_params
      params.require(:tbgrupo).permit(:name)
    end
end
