class TpeventsController < ApplicationController
  before_action :set_tpevent, only: [:show, :edit, :update, :destroy]

  # GET /tpevents
  def index
    @tpevents = Tpevent.all
  end

  # GET /tpevents/1
  def show
  end

  # GET /tpevents/new
  def new
    @tpevent = Tpevent.new
  end

  # GET /tpevents/1/edit
  def edit
  end

  # POST /tpevents
  def create
    @tpevent = Tpevent.new(tpevent_params)

    if @tpevent.save
      redirect_to @tpevent, notice: 'Tpevent was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /tpevents/1
  def update
    if @tpevent.update(tpevent_params)
      redirect_to @tpevent, notice: 'Tpevent was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /tpevents/1
  def destroy
    @tpevent.destroy
    redirect_to tpevents_url, notice: 'Tpevent was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tpevent
      @tpevent = Tpevent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tpevent_params
      params.require(:tpevent).permit(:name)
    end
end
