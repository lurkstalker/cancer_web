require 'test_helper'

class CancerTargetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cancer_target = cancer_targets(:one)
  end

  test "should get index" do
    get cancer_targets_url
    assert_response :success
  end

  test "should get new" do
    get new_cancer_target_url
    assert_response :success
  end

  test "should create cancer_target" do
    assert_difference('CancerTarget.count') do
      post cancer_targets_url, params: { cancer_target: { cancer_syndrome: @cancer_target.cancer_syndrome, chr_band: @cancer_target.chr_band, entrez_gene_Id: @cancer_target.entrez_gene_Id, gemline: @cancer_target.gemline, gene_name: @cancer_target.gene_name, gene_symbol: @cancer_target.gene_symbol, genome_location: @cancer_target.genome_location, hallmark: @cancer_target.hallmark, molecular_genetics: @cancer_target.molecular_genetics, mutation_types: @cancer_target.mutation_types, other_germline_mut: @cancer_target.other_germline_mut, other_syndrome: @cancer_target.other_syndrome, role_in_cancer: @cancer_target.role_in_cancer, somatic: @cancer_target.somatic, synonyms: @cancer_target.synonyms, tier: @cancer_target.tier, tissue_types: @cancer_target.tissue_types, translocation_partner: @cancer_target.translocation_partner, tumor_types_germline: @cancer_target.tumor_types_germline, tumor_types_somatic: @cancer_target.tumor_types_somatic } }
    end

    assert_redirected_to cancer_target_url(CancerTarget.last)
  end

  test "should show cancer_target" do
    get cancer_target_url(@cancer_target)
    assert_response :success
  end

  test "should get edit" do
    get edit_cancer_target_url(@cancer_target)
    assert_response :success
  end

  test "should update cancer_target" do
    patch cancer_target_url(@cancer_target), params: { cancer_target: { cancer_syndrome: @cancer_target.cancer_syndrome, chr_band: @cancer_target.chr_band, entrez_gene_Id: @cancer_target.entrez_gene_Id, gemline: @cancer_target.gemline, gene_name: @cancer_target.gene_name, gene_symbol: @cancer_target.gene_symbol, genome_location: @cancer_target.genome_location, hallmark: @cancer_target.hallmark, molecular_genetics: @cancer_target.molecular_genetics, mutation_types: @cancer_target.mutation_types, other_germline_mut: @cancer_target.other_germline_mut, other_syndrome: @cancer_target.other_syndrome, role_in_cancer: @cancer_target.role_in_cancer, somatic: @cancer_target.somatic, synonyms: @cancer_target.synonyms, tier: @cancer_target.tier, tissue_types: @cancer_target.tissue_types, translocation_partner: @cancer_target.translocation_partner, tumor_types_germline: @cancer_target.tumor_types_germline, tumor_types_somatic: @cancer_target.tumor_types_somatic } }
    assert_redirected_to cancer_target_url(@cancer_target)
  end

  test "should destroy cancer_target" do
    assert_difference('CancerTarget.count', -1) do
      delete cancer_target_url(@cancer_target)
    end

    assert_redirected_to cancer_targets_url
  end
end
