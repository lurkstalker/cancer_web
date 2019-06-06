class MycanergenomesController < ApplicationController
  before_action :set_mycanergenome, only: [:show, :edit, :update, :destroy]

  # GET /mycanergenomes
  # GET /mycanergenomes.json
  def index
    @mycanergenomes = Mycanergenome.all
  end

  # GET /mycanergenomes/1
  # GET /mycanergenomes/1.json
  def show
  end

  # GET /mycanergenomes/new
  def new
    @mycanergenome = Mycanergenome.new
  end

  # GET /mycanergenomes/1/edit
  def edit
  end

  # POST /mycanergenomes
  # POST /mycanergenomes.json
  def create
    @mycanergenome = Mycanergenome.new(mycanergenome_params)

    respond_to do |format|
      if @mycanergenome.save
        format.html { redirect_to @mycanergenome, notice: 'Mycanergenome was successfully created.' }
        format.json { render :show, status: :created, location: @mycanergenome }
      else
        format.html { render :new }
        format.json { render json: @mycanergenome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mycanergenomes/1
  # PATCH/PUT /mycanergenomes/1.json
  def update
    respond_to do |format|
      if @mycanergenome.update(mycanergenome_params)
        format.html { redirect_to @mycanergenome, notice: 'Mycanergenome was successfully updated.' }
        format.json { render :show, status: :ok, location: @mycanergenome }
      else
        format.html { render :edit }
        format.json { render json: @mycanergenome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mycanergenomes/1
  # DELETE /mycanergenomes/1.json
  def destroy
    @mycanergenome.destroy
    respond_to do |format|
      format.html { redirect_to mycanergenomes_url, notice: 'Mycanergenome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycanergenome
      @mycanergenome = Mycanergenome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mycanergenome_params
      params.require(:mycanergenome).permit(:biomarker, :patient_percent, :low_level, :high_level, :treatment_protein, :drugs, :orgin_cancer, :second_cancer, :data_original, :num_ref)
    end
end
