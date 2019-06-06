class DgidbsController < ApplicationController
  before_action :set_dgidb, only: [:show, :edit, :update, :destroy]

  # GET /dgidbs
  # GET /dgidbs.json
  def index
    @dgidbs = Dgidb.limit(100)
  end

  # GET /dgidbs/1
  # GET /dgidbs/1.json
  def show
  end

  # GET /dgidbs/new
  def new
    @dgidb = Dgidb.new
  end

  # GET /dgidbs/1/edit
  def edit
  end

  # POST /dgidbs
  # POST /dgidbs.json
  def create
    @dgidb = Dgidb.new(dgidb_params)

    respond_to do |format|
      if @dgidb.save
        format.html { redirect_to @dgidb, notice: 'Dgidb was successfully created.' }
        format.json { render :show, status: :created, location: @dgidb }
      else
        format.html { render :new }
        format.json { render json: @dgidb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dgidbs/1
  # PATCH/PUT /dgidbs/1.json
  def update
    respond_to do |format|
      if @dgidb.update(dgidb_params)
        format.html { redirect_to @dgidb, notice: 'Dgidb was successfully updated.' }
        format.json { render :show, status: :ok, location: @dgidb }
      else
        format.html { render :edit }
        format.json { render json: @dgidb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dgidbs/1
  # DELETE /dgidbs/1.json
  def destroy
    @dgidb.destroy
    respond_to do |format|
      format.html { redirect_to dgidbs_url, notice: 'Dgidb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dgidb
      @dgidb = Dgidb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dgidb_params
      params.require(:dgidb).permit(:gene_name, :gene_hgnc_id, :hgnc_complete_set_name, :ensembl_gene_id, :ref_seq_accession, :gene_claim_name, :entrez_gene_id, :interation_claim_source, :interation_types, :drug_claim_name, :drug_claim_primary_name, :drug_name, :drug_chembl_id, :pubmed_id, :drug_bank_id, :drug_bank_name)
    end
end
