class OncokbsController < ApplicationController
  before_action :set_oncokb, only: [:show, :edit, :update, :destroy]

  # GET /oncokbs
  # GET /oncokbs.json
  def index
    @oncokbs = Oncokb.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @oncokbs  = Oncokb.joins('INNER JOIN dgidbs ON oncokbs.gene_name = dgidbs.gene_name').where(gene_name: @name)
    end
  end

  # GET /oncokbs/1
  # GET /oncokbs/1.json
  def show
  end

  # GET /oncokbs/new
  def new
    @oncokb = Oncokb.new
  end

  # GET /oncokbs/1/edit
  def edit
  end

  # POST /oncokbs
  # POST /oncokbs.json
  def create
    @oncokb = Oncokb.new(oncokb_params)

    respond_to do |format|
      if @oncokb.save
        format.html { redirect_to @oncokb, notice: 'Oncokb was successfully created.' }
        format.json { render :show, status: :created, location: @oncokb }
      else
        format.html { render :new }
        format.json { render json: @oncokb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oncokbs/1
  # PATCH/PUT /oncokbs/1.json
  def update
    respond_to do |format|
      if @oncokb.update(oncokb_params)
        format.html { redirect_to @oncokb, notice: 'Oncokb was successfully updated.' }
        format.json { render :show, status: :ok, location: @oncokb }
      else
        format.html { render :edit }
        format.json { render json: @oncokb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oncokbs/1
  # DELETE /oncokbs/1.json
  def destroy
    @oncokb.destroy
    respond_to do |format|
      format.html { redirect_to oncokbs_url, notice: 'Oncokb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oncokb
      @oncokb = Oncokb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oncokb_params
      params.require(:oncokb).permit(:isoform, :ref_seq, :entrez_gene_id, :gene_name, :alteration, :cancer_type, :level_type, :oncokb_drugs, :pmid, :abstracts_drugs, :drug_bank_name, :drug_bank_id, :icd_10_codes)
    end
end
