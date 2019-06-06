require 'test_helper'

class CanSarCancerGeneCensusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @can_sar_cancer_gene_censuse = can_sar_cancer_gene_censuses(:one)
  end

  test "should get index" do
    get can_sar_cancer_gene_censuses_url
    assert_response :success
  end

  test "should get new" do
    get new_can_sar_cancer_gene_censuse_url
    assert_response :success
  end

  test "should create can_sar_cancer_gene_censuse" do
    assert_difference('CanSarCancerGeneCensuse.count') do
      post can_sar_cancer_gene_censuses_url, params: { can_sar_cancer_gene_censuse: { cancer_syndrome: @can_sar_cancer_gene_censuse.cancer_syndrome, chr_band: @can_sar_cancer_gene_censuse.chr_band, entrez_gene_Id: @can_sar_cancer_gene_censuse.entrez_gene_Id, gemline: @can_sar_cancer_gene_censuse.gemline, gene_name: @can_sar_cancer_gene_censuse.gene_name, gene_symbol: @can_sar_cancer_gene_censuse.gene_symbol, genome_location: @can_sar_cancer_gene_censuse.genome_location, hallmark: @can_sar_cancer_gene_censuse.hallmark, molecular_genetics: @can_sar_cancer_gene_censuse.molecular_genetics, mutation_types: @can_sar_cancer_gene_censuse.mutation_types, other_germline_mut: @can_sar_cancer_gene_censuse.other_germline_mut, other_syndrome: @can_sar_cancer_gene_censuse.other_syndrome, role_in_cancer: @can_sar_cancer_gene_censuse.role_in_cancer, somatic: @can_sar_cancer_gene_censuse.somatic, synonyms: @can_sar_cancer_gene_censuse.synonyms, tier: @can_sar_cancer_gene_censuse.tier, tissue_types: @can_sar_cancer_gene_censuse.tissue_types, translocation_partner: @can_sar_cancer_gene_censuse.translocation_partner, tumor_types_germline: @can_sar_cancer_gene_censuse.tumor_types_germline, tumor_types_somatic: @can_sar_cancer_gene_censuse.tumor_types_somatic } }
    end

    assert_redirected_to can_sar_cancer_gene_censuse_url(CanSarCancerGeneCensuse.last)
  end

  test "should show can_sar_cancer_gene_censuse" do
    get can_sar_cancer_gene_censuse_url(@can_sar_cancer_gene_censuse)
    assert_response :success
  end

  test "should get edit" do
    get edit_can_sar_cancer_gene_censuse_url(@can_sar_cancer_gene_censuse)
    assert_response :success
  end

  test "should update can_sar_cancer_gene_censuse" do
    patch can_sar_cancer_gene_censuse_url(@can_sar_cancer_gene_censuse), params: { can_sar_cancer_gene_censuse: { cancer_syndrome: @can_sar_cancer_gene_censuse.cancer_syndrome, chr_band: @can_sar_cancer_gene_censuse.chr_band, entrez_gene_Id: @can_sar_cancer_gene_censuse.entrez_gene_Id, gemline: @can_sar_cancer_gene_censuse.gemline, gene_name: @can_sar_cancer_gene_censuse.gene_name, gene_symbol: @can_sar_cancer_gene_censuse.gene_symbol, genome_location: @can_sar_cancer_gene_censuse.genome_location, hallmark: @can_sar_cancer_gene_censuse.hallmark, molecular_genetics: @can_sar_cancer_gene_censuse.molecular_genetics, mutation_types: @can_sar_cancer_gene_censuse.mutation_types, other_germline_mut: @can_sar_cancer_gene_censuse.other_germline_mut, other_syndrome: @can_sar_cancer_gene_censuse.other_syndrome, role_in_cancer: @can_sar_cancer_gene_censuse.role_in_cancer, somatic: @can_sar_cancer_gene_censuse.somatic, synonyms: @can_sar_cancer_gene_censuse.synonyms, tier: @can_sar_cancer_gene_censuse.tier, tissue_types: @can_sar_cancer_gene_censuse.tissue_types, translocation_partner: @can_sar_cancer_gene_censuse.translocation_partner, tumor_types_germline: @can_sar_cancer_gene_censuse.tumor_types_germline, tumor_types_somatic: @can_sar_cancer_gene_censuse.tumor_types_somatic } }
    assert_redirected_to can_sar_cancer_gene_censuse_url(@can_sar_cancer_gene_censuse)
  end

  test "should destroy can_sar_cancer_gene_censuse" do
    assert_difference('CanSarCancerGeneCensuse.count', -1) do
      delete can_sar_cancer_gene_censuse_url(@can_sar_cancer_gene_censuse)
    end

    assert_redirected_to can_sar_cancer_gene_censuses_url
  end
end
