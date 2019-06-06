require 'test_helper'

class DgidbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dgidb = dgidbs(:one)
  end

  test "should get index" do
    get dgidbs_url
    assert_response :success
  end

  test "should get new" do
    get new_dgidb_url
    assert_response :success
  end

  test "should create dgidb" do
    assert_difference('Dgidb.count') do
      post dgidbs_url, params: { dgidb: { drug_bank_id: @dgidb.drug_bank_id, drug_bank_name: @dgidb.drug_bank_name, drug_chembl_id: @dgidb.drug_chembl_id, drug_claim_name: @dgidb.drug_claim_name, drug_claim_primary_name: @dgidb.drug_claim_primary_name, drug_name: @dgidb.drug_name, ensembl_gene_id: @dgidb.ensembl_gene_id, entrez_gene_id: @dgidb.entrez_gene_id, gene_claim_name: @dgidb.gene_claim_name, gene_hgnc_id: @dgidb.gene_hgnc_id, gene_name: @dgidb.gene_name, hgnc_complete_set_name: @dgidb.hgnc_complete_set_name, interation_claim_source: @dgidb.interation_claim_source, interation_types: @dgidb.interation_types, pubmed_id: @dgidb.pubmed_id, ref_seq_accession: @dgidb.ref_seq_accession } }
    end

    assert_redirected_to dgidb_url(Dgidb.last)
  end

  test "should show dgidb" do
    get dgidb_url(@dgidb)
    assert_response :success
  end

  test "should get edit" do
    get edit_dgidb_url(@dgidb)
    assert_response :success
  end

  test "should update dgidb" do
    patch dgidb_url(@dgidb), params: { dgidb: { drug_bank_id: @dgidb.drug_bank_id, drug_bank_name: @dgidb.drug_bank_name, drug_chembl_id: @dgidb.drug_chembl_id, drug_claim_name: @dgidb.drug_claim_name, drug_claim_primary_name: @dgidb.drug_claim_primary_name, drug_name: @dgidb.drug_name, ensembl_gene_id: @dgidb.ensembl_gene_id, entrez_gene_id: @dgidb.entrez_gene_id, gene_claim_name: @dgidb.gene_claim_name, gene_hgnc_id: @dgidb.gene_hgnc_id, gene_name: @dgidb.gene_name, hgnc_complete_set_name: @dgidb.hgnc_complete_set_name, interation_claim_source: @dgidb.interation_claim_source, interation_types: @dgidb.interation_types, pubmed_id: @dgidb.pubmed_id, ref_seq_accession: @dgidb.ref_seq_accession } }
    assert_redirected_to dgidb_url(@dgidb)
  end

  test "should destroy dgidb" do
    assert_difference('Dgidb.count', -1) do
      delete dgidb_url(@dgidb)
    end

    assert_redirected_to dgidbs_url
  end
end
