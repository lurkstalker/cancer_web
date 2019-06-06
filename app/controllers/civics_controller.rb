class CivicsController < ApplicationController
  before_action :set_civic, only: [:show, :edit, :update, :destroy]

  # GET /civics
  # GET /civics.json
  def index
    @civics = Civic.all
  end

  # GET /civics/1
  # GET /civics/1.json
  def show
    @civic = Civic.first
  end

  # GET /civics/new
  def new
    @civic = Civic.new
  end

  # GET /civics/1/edit
  def edit
  end

  # POST /civics
  # POST /civics.json
  def create
    @civic = Civic.new(civic_params)

    respond_to do |format|
      if @civic.save
        format.html { redirect_to @civic, notice: 'Civic was successfully created.' }
        format.json { render :show, status: :created, location: @civic }
      else
        format.html { render :new }
        format.json { render json: @civic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civics/1
  # PATCH/PUT /civics/1.json
  def update
    respond_to do |format|
      if @civic.update(civic_params)
        format.html { redirect_to @civic, notice: 'Civic was successfully updated.' }
        format.json { render :show, status: :ok, location: @civic }
      else
        format.html { render :edit }
        format.json { render json: @civic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civics/1
  # DELETE /civics/1.json
  def destroy
    @civic.destroy
    respond_to do |format|
      format.html { redirect_to civics_url, notice: 'Civic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civic
      @civic = Civic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def civic_params
      params.require(:civic).permit(:gene_symbol_copy, :gene_symbol, :gene_hgnc_id, :ensembl_gene_id, :ref_seq_accession, :entrez_gene_id, :variants, :disease, :do_id, :phenotypes, :drugs, :evidence_type, :evidence_direction, :evidence_level, :clinical_significance, :evidence_statement, :pubmed_id, :citation, :nct_ids, :rating, :evidence_status, :evidence_id, :variant_id, :gene_id, :chromosome, :start_position, :stop_position, :reference_bases, :variant_bases, :representative_transcript, :chromosome2, :start_position2, :stop_position2, :representative_transcript2, :ensembl_version, :reference_build, :variant_summary, :variant_origin, :last_review_date, :evidence_civic_url, :variant_civic_url, :gene_civic_url, :drug_bank_name, :drug_bank_id, :icd_10_codes)
    end
end
