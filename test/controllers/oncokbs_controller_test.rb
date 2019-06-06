require 'test_helper'

class OncokbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oncokb = oncokbs(:one)
  end

  test "should get index" do
    get oncokbs_url
    assert_response :success
  end

  test "should get new" do
    get new_oncokb_url
    assert_response :success
  end

  test "should create oncokb" do
    assert_difference('Oncokb.count') do
      post oncokbs_url, params: { oncokb: { abstracts_drugs: @oncokb.abstracts_drugs, alteration: @oncokb.alteration, cancer_type: @oncokb.cancer_type, drug_bank_id: @oncokb.drug_bank_id, drug_bank_name: @oncokb.drug_bank_name, entrez_gene_id: @oncokb.entrez_gene_id, gene_name: @oncokb.gene_name, icd_10_codes: @oncokb.icd_10_codes, isoform: @oncokb.isoform, level_type: @oncokb.level_type, oncokb_drugs: @oncokb.oncokb_drugs, pmid: @oncokb.pmid, ref_seq: @oncokb.ref_seq } }
    end

    assert_redirected_to oncokb_url(Oncokb.last)
  end

  test "should show oncokb" do
    get oncokb_url(@oncokb)
    assert_response :success
  end

  test "should get edit" do
    get edit_oncokb_url(@oncokb)
    assert_response :success
  end

  test "should update oncokb" do
    patch oncokb_url(@oncokb), params: { oncokb: { abstracts_drugs: @oncokb.abstracts_drugs, alteration: @oncokb.alteration, cancer_type: @oncokb.cancer_type, drug_bank_id: @oncokb.drug_bank_id, drug_bank_name: @oncokb.drug_bank_name, entrez_gene_id: @oncokb.entrez_gene_id, gene_name: @oncokb.gene_name, icd_10_codes: @oncokb.icd_10_codes, isoform: @oncokb.isoform, level_type: @oncokb.level_type, oncokb_drugs: @oncokb.oncokb_drugs, pmid: @oncokb.pmid, ref_seq: @oncokb.ref_seq } }
    assert_redirected_to oncokb_url(@oncokb)
  end

  test "should destroy oncokb" do
    assert_difference('Oncokb.count', -1) do
      delete oncokb_url(@oncokb)
    end

    assert_redirected_to oncokbs_url
  end
end
