class CancerTargetsController < ApplicationController
  before_action :set_cancer_target, only: [:show, :edit, :update, :destroy]

  # GET /cancer_targets
  # GET /cancer_targets.json
  def index
    @cancer_targets = CancerTarget.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @cancer_targets  = CancerTarget.where(gene_name: @name)
    end
  end

  # GET /cancer_targets/1
  # GET /cancer_targets/1.json
  def show
  end

  # GET /cancer_targets/new
  def new
    @cancer_target = CancerTarget.new
  end

  # GET /cancer_targets/1/edit
  def edit
  end

  # POST /cancer_targets
  # POST /cancer_targets.json
  def create
    @cancer_target = CancerTarget.new(cancer_target_params)

    respond_to do |format|
      if @cancer_target.save
        format.html { redirect_to @cancer_target, notice: 'Cancer target was successfully created.' }
        format.json { render :show, status: :created, location: @cancer_target }
      else
        format.html { render :new }
        format.json { render json: @cancer_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cancer_targets/1
  # PATCH/PUT /cancer_targets/1.json
  def update
    respond_to do |format|
      if @cancer_target.update(cancer_target_params)
        format.html { redirect_to @cancer_target, notice: 'Cancer target was successfully updated.' }
        format.json { render :show, status: :ok, location: @cancer_target }
      else
        format.html { render :edit }
        format.json { render json: @cancer_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cancer_targets/1
  # DELETE /cancer_targets/1.json
  def destroy
    @cancer_target.destroy
    respond_to do |format|
      format.html { redirect_to cancer_targets_url, notice: 'Cancer target was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancer_target
      @cancer_target = CancerTarget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cancer_target_params
      params.require(:cancer_target).permit(:gene_symbol, :gene_name, :entrez_gene_Id, :genome_location, :tier, :hallmark, :chr_band, :somatic, :gemline, :tumor_types_somatic, :tumor_types_germline, :cancer_syndrome, :tissue_types, :molecular_genetics, :role_in_cancer, :mutation_types, :translocation_partner, :other_germline_mut, :other_syndrome, :synonyms)
    end
end
