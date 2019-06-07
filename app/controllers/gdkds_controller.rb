class GdkdsController < ApplicationController
  before_action :set_gdkd, only: [:show, :edit, :update, :destroy]

  # GET /gdkds
  # GET /gdkds.json
  def index
    @gdkds = Gdkd.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @gdkds   =Gdkd.where(Gene: @name)
    end
  end

  # GET /gdkds/1
  # GET /gdkds/1.json
  def show
  end

  # GET /gdkds/new
  def new
    @gdkd = Gdkd.new
  end

  # GET /gdkds/1/edit
  def edit
  end

  # POST /gdkds
  # POST /gdkds.json
  def create
    @gdkd = Gdkd.new(gdkd_params)

    respond_to do |format|
      if @gdkd.save
        format.html { redirect_to @gdkd, notice: 'Gdkd was successfully created.' }
        format.json { render :show, status: :created, location: @gdkd }
      else
        format.html { render :new }
        format.json { render json: @gdkd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gdkds/1
  # PATCH/PUT /gdkds/1.json
  def update
    respond_to do |format|
      if @gdkd.update(gdkd_params)
        format.html { redirect_to @gdkd, notice: 'Gdkd was successfully updated.' }
        format.json { render :show, status: :ok, location: @gdkd }
      else
        format.html { render :edit }
        format.json { render json: @gdkd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gdkds/1
  # DELETE /gdkds/1.json
  def destroy
    @gdkd.destroy
    respond_to do |format|
      format.html { redirect_to gdkds_url, notice: 'Gdkd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gdkd
      @gdkd = Gdkd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gdkd_params
      params.require(:gdkd).permit(:id, :Disease, :icd10, :Gene, :hgnc_id, :ensembl_gene_id, :refseq_accession, :Variant, :Description, :Effect, :Pathway, :Association1, :TherapeuticContext1, :Status1, :Evidence1, :PMID1, :Association2, :TherapeuticContext2, :Status2, :Evidence2, :PMID2, :Association3, :TherapeuticContext3, :Status3, :Evidence3, :PMID3, :Association4, :TherapeuticContext4, :Status4, :Evidence4, :PMID4, :Association5, :TherapeuticContext5, :Status5, :Evidence5, :PMID5, :Association6, :TherapeuticContext6, :Status6, :Evidence6, :PMID6, :Association7, :TherapeuticContext7, :Status7, :Evidence7, :PMID7, :Association8, :TherapeuticContext8, :Status8, :Evidence8, :PMID8, :Prognostic, :PMID9, :Diagnostic, :PMID10, :BiologicalRelevancePMID, :DrugBankName1, :DrugBankID1, :DrugBankName2, :DrugBankID2)
    end
end
