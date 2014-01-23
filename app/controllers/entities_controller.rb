class EntitiesController < ApplicationController
  before_action :set_entity, only: [:show, :edit, :update, :destroy]

  # GET /entities
  def index
    @entities = Entity.all
  end

  # GET /entities/1
  def show
  end

  # GET /entities/new
  def new
    @entity = Entity.new
  end

  # GET /entities/1/edit
  def edit
  end

  # POST /entities
  def create
    @entity = Entity.new(entity_params)

    if @entity.save
      redirect_to @entity, notice: 'Entity was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /entities/1
  def update
    if @entity.update(entity_params)
      redirect_to @entity, notice: 'Entity was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /entities/1
  def destroy
    @entity.destroy
    redirect_to entities_url, notice: 'Entity was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entity
      @entity = Entity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entity_params
      params.require(:entity).permit(:name, :endereco, :bairro, :cep, :cidade, :uf, :tel1, :tel2, :email, :endcorresp, :bairrocorresp, :cepcorresp, :cidadecorresp, :ufcorresp, :patrao, :fonerespatrao, :fonecompatrao, :celpatrao, :emailpatrao, :cnpj, :dtfundacao, :datafiliacaomtg)
    end
end
