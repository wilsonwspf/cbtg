class FunctionsController < ApplicationController
  before_action :set_function, only: [:show, :edit, :update, :destroy]

  # GET /functions
  def index
    @functions = Function.all
  end

  # GET /functions/1
  def show
  end

  # GET /functions/new
  def new
    @function = Function.new
  end

  # GET /functions/1/edit
  def edit
  end

  # POST /functions
  def create
    @function = Function.new(function_params)

    if @function.save
      redirect_to @function, notice: 'Function was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /functions/1
  def update
    if @function.update(function_params)
      redirect_to @function, notice: 'Function was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /functions/1
  def destroy
    @function.destroy
    redirect_to functions_url, notice: 'Function was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_function
      @function = Function.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def function_params
      params.require(:function).permit(:name)
    end
end
