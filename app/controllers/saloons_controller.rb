class SaloonsController < ApplicationController
  before_action :set_saloon, only: [:show, :edit, :update, :destroy]

  # GET /saloons
  def index
    @saloons = Saloon.all
  end

  # GET /saloons/1
  def show
  end

  # GET /saloons/new
  def new
    @saloon = Saloon.new
  end

  # GET /saloons/1/edit
  def edit
  end

  # POST /saloons
  def create
    @saloon = Saloon.new(saloon_params)

    if @saloon.save
      redirect_to @saloon, notice: 'Saloon was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /saloons/1
  def update
    if @saloon.update(saloon_params)
      redirect_to @saloon, notice: 'Saloon was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /saloons/1
  def destroy
    @saloon.destroy
    redirect_to saloons_url, notice: 'Saloon was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saloon
      @saloon = Saloon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def saloon_params
      params.require(:saloon).permit(:name)
    end
end
