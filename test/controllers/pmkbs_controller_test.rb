require 'test_helper'

class PmkbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmkb = pmkbs(:one)
  end

  test "should get index" do
    get pmkbs_url
    assert_response :success
  end

  test "should get new" do
    get new_pmkb_url
    assert_response :success
  end

  test "should create pmkb" do
    assert_difference('Pmkb.count') do
      post pmkbs_url, params: { pmkb: { entrez_gene_id: @pmkb.entrez_gene_id, gene_hgnc_id: @pmkb.gene_hgnc_id, gene_symbol: @pmkb.gene_symbol, intepretations: @pmkb.intepretations, ref_seq_accession: @pmkb.ref_seq_accession, tier: @pmkb.tier, tissue_types: @pmkb.tissue_types, tumor_types: @pmkb.tumor_types, variants: @pmkb.variants } }
    end

    assert_redirected_to pmkb_url(Pmkb.last)
  end

  test "should show pmkb" do
    get pmkb_url(@pmkb)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmkb_url(@pmkb)
    assert_response :success
  end

  test "should update pmkb" do
    patch pmkb_url(@pmkb), params: { pmkb: { entrez_gene_id: @pmkb.entrez_gene_id, gene_hgnc_id: @pmkb.gene_hgnc_id, gene_symbol: @pmkb.gene_symbol, intepretations: @pmkb.intepretations, ref_seq_accession: @pmkb.ref_seq_accession, tier: @pmkb.tier, tissue_types: @pmkb.tissue_types, tumor_types: @pmkb.tumor_types, variants: @pmkb.variants } }
    assert_redirected_to pmkb_url(@pmkb)
  end

  test "should destroy pmkb" do
    assert_difference('Pmkb.count', -1) do
      delete pmkb_url(@pmkb)
    end

    assert_redirected_to pmkbs_url
  end
end
