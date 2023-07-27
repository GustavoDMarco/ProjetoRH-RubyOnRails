class EnderecoFuncionariosController < ApplicationController
  before_action :set_endereco_funcionario, only: %i[ show edit update destroy ]

  # GET /endereco_funcionarios or /endereco_funcionarios.json
  def index
    @endereco_funcionarios = EnderecoFuncionario.all
  end

  # GET /endereco_funcionarios/1 or /endereco_funcionarios/1.json
  def show
  end

  # GET /endereco_funcionarios/new
  def new
    @endereco_funcionario = EnderecoFuncionario.new
  end

  # GET /endereco_funcionarios/1/edit
  def edit
  end

  # POST /endereco_funcionarios or /endereco_funcionarios.json
  def create
    @endereco_funcionario = EnderecoFuncionario.new(endereco_funcionario_params)

    respond_to do |format|
      if @endereco_funcionario.save
        format.html { redirect_to endereco_funcionario_url(@endereco_funcionario), notice: "Endereco funcionario was successfully created." }
        format.json { render :show, status: :created, location: @endereco_funcionario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @endereco_funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endereco_funcionarios/1 or /endereco_funcionarios/1.json
  def update
    respond_to do |format|
      if @endereco_funcionario.update(endereco_funcionario_params)
        format.html { redirect_to endereco_funcionario_url(@endereco_funcionario), notice: "Endereco funcionario was successfully updated." }
        format.json { render :show, status: :ok, location: @endereco_funcionario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @endereco_funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endereco_funcionarios/1 or /endereco_funcionarios/1.json
  def destroy
    @endereco_funcionario.destroy

    respond_to do |format|
      format.html { redirect_to endereco_funcionarios_url, notice: "Endereco funcionario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco_funcionario
      @endereco_funcionario = EnderecoFuncionario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def endereco_funcionario_params
      params.require(:endereco_funcionario).permit(:rua, :num, :bairro, :cidade, :estado, :funcionario_id)
    end
end
