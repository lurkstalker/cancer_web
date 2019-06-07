class PmkbsController < ApplicationController
  before_action :set_pmkb, only: [:show, :edit, :update, :destroy]

  # GET /pmkbs
  # GET /pmkbs.json
  def index
    @pmkbs = Pmkb.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @pmkbs  =  Pmkb.where(gene_symbol: @name)
    end
  end

  # GET /pmkbs/1
  # GET /pmkbs/1.json
  def show
  end

  # GET /pmkbs/new
  def new
    @pmkb = Pmkb.new
  end

  # GET /pmkbs/1/edit
  def edit
  end

  # POST /pmkbs
  # POST /pmkbs.json
  def create
    @pmkb = Pmkb.new(pmkb_params)

    respond_to do |format|
      if @pmkb.save
        format.html { redirect_to @pmkb, notice: 'Pmkb was successfully created.' }
        format.json { render :show, status: :created, location: @pmkb }
      else
        format.html { render :new }
        format.json { render json: @pmkb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmkbs/1
  # PATCH/PUT /pmkbs/1.json
  def update
    respond_to do |format|
      if @pmkb.update(pmkb_params)
        format.html { redirect_to @pmkb, notice: 'Pmkb was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmkb }
      else
        format.html { render :edit }
        format.json { render json: @pmkb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmkbs/1
  # DELETE /pmkbs/1.json
  def destroy
    @pmkb.destroy
    respond_to do |format|
      format.html { redirect_to pmkbs_url, notice: 'Pmkb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmkb
      @pmkb = Pmkb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmkb_params
      params.require(:pmkb).permit(:gene_symbol, :gene_hgnc_id, :entrez_gene_id, :ref_seq_accession, :tumor_types, :tissue_types, :variants, :tier, :intepretations)
    end
end
