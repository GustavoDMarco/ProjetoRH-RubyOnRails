class EnderecoEmpresasController < ApplicationController
  before_action :set_endereco_empresa, only: %i[ show edit update destroy ]

  # GET /endereco_empresas or /endereco_empresas.json
  def index
    @endereco_empresas = EnderecoEmpresa.all
  end

  # GET /endereco_empresas/1 or /endereco_empresas/1.json
  def show
  end

  # GET /endereco_empresas/new
  def new
    @endereco_empresa = EnderecoEmpresa.new
  end

  # GET /endereco_empresas/1/edit
  def edit
  end

  # POST /endereco_empresas or /endereco_empresas.json
  def create
    @endereco_empresa = EnderecoEmpresa.new(endereco_empresa_params)

    respond_to do |format|
      if @endereco_empresa.save
        format.html { redirect_to endereco_empresa_url(@endereco_empresa), notice: "Endereco empresa was successfully created." }
        format.json { render :show, status: :created, location: @endereco_empresa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @endereco_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endereco_empresas/1 or /endereco_empresas/1.json
  def update
    respond_to do |format|
      if @endereco_empresa.update(endereco_empresa_params)
        format.html { redirect_to endereco_empresa_url(@endereco_empresa), notice: "Endereco empresa was successfully updated." }
        format.json { render :show, status: :ok, location: @endereco_empresa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @endereco_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endereco_empresas/1 or /endereco_empresas/1.json
  def destroy
    @endereco_empresa.destroy

    respond_to do |format|
      format.html { redirect_to endereco_empresas_url, notice: "Endereco empresa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco_empresa
      @endereco_empresa = EnderecoEmpresa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def endereco_empresa_params
      params.require(:endereco_empresa).permit(:rua, :num, :bairro, :cidade, :estado, :empresa_id)
    end
end
