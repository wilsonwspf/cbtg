class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  def index
    if params[:busca].present?
      @nascimento_inicio = Date.new params[:busca]["nascimento_inicio(1i)"].to_i, params[:busca]["nascimento_inicio(2i)"].to_i, params[:busca]["nascimento_inicio(3i)"].to_i
      @nascimento_fim = Date.new params[:busca]["nascimento_fim(1i)"].to_i, params[:busca]["nascimento_fim(2i)"].to_i, params[:busca]["nascimento_fim(3i)"].to_i
      @members = Member.where("name LIKE ?", "%#{params[:busca][:name]}%").where(dtnasc: (@nascimento_inicio..@nascimento_fim))
    else
      @members = Member.all
    end
  end

  # GET /members/1
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to @member, notice: 'Member was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /members/1
  def update
    if @member.update(member_params)
      redirect_to @member, notice: 'Member was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /members/1
  def destroy
    @member.destroy
    redirect_to members_url, notice: 'Member was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def member_params
      params.require(:member).permit(:name, :matricula, :dtmatricula, :endereco, :bairro, :cep, :cidade, :uf, :telefone, :celular, :email, :dtnasc, :natural, :naturaluf, :conjuge, :nascconj, :codbarra, :picture, :ctg_id)
    end
end
