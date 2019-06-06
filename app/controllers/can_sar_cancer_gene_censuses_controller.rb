class CanSarCancerGeneCensusesController < ApplicationController
  before_action :set_can_sar_cancer_gene_censuse, only: [:show, :edit, :update, :destroy]

  # GET /can_sar_cancer_gene_censuses
  # GET /can_sar_cancer_gene_censuses.json
  def index
    debugger
    @can_sar_cancer_gene_censuses = CanSarCancerGeneCensuse.all
  end

  # GET /can_sar_cancer_gene_censuses/1
  # GET /can_sar_cancer_gene_censuses/1.json
  def show
  end

  # GET /can_sar_cancer_gene_censuses/new
  def new
    @can_sar_cancer_gene_censuse = CanSarCancerGeneCensuse.new
  end

  # GET /can_sar_cancer_gene_censuses/1/edit
  def edit
  end

  # POST /can_sar_cancer_gene_censuses
  # POST /can_sar_cancer_gene_censuses.json
  def create
    @can_sar_cancer_gene_censuse = CanSarCancerGeneCensuse.new(can_sar_cancer_gene_censuse_params)

    respond_to do |format|
      if @can_sar_cancer_gene_censuse.save
        format.html { redirect_to @can_sar_cancer_gene_censuse, notice: 'Can sar cancer gene censuse was successfully created.' }
        format.json { render :show, status: :created, location: @can_sar_cancer_gene_censuse }
      else
        format.html { render :new }
        format.json { render json: @can_sar_cancer_gene_censuse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /can_sar_cancer_gene_censuses/1
  # PATCH/PUT /can_sar_cancer_gene_censuses/1.json
  def update
    respond_to do |format|
      if @can_sar_cancer_gene_censuse.update(can_sar_cancer_gene_censuse_params)
        format.html { redirect_to @can_sar_cancer_gene_censuse, notice: 'Can sar cancer gene censuse was successfully updated.' }
        format.json { render :show, status: :ok, location: @can_sar_cancer_gene_censuse }
      else
        format.html { render :edit }
        format.json { render json: @can_sar_cancer_gene_censuse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /can_sar_cancer_gene_censuses/1
  # DELETE /can_sar_cancer_gene_censuses/1.json
  def destroy
    @can_sar_cancer_gene_censuse.destroy
    respond_to do |format|
      format.html { redirect_to can_sar_cancer_gene_censuses_url, notice: 'Can sar cancer gene censuse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_can_sar_cancer_gene_censuse
      @can_sar_cancer_gene_censuse = CanSarCancerGeneCensuse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def can_sar_cancer_gene_censuse_params
      params.require(:can_sar_cancer_gene_censuse).permit(:gene_symbol, :gene_name, :entrez_gene_Id, :genome_location, :tier, :hallmark, :chr_band, :somatic, :gemline, :tumor_types_somatic, :tumor_types_germline, :cancer_syndrome, :tissue_types, :molecular_genetics, :role_in_cancer, :mutation_types, :translocation_partner, :other_germline_mut, :other_syndrome, :synonyms)
    end
end
