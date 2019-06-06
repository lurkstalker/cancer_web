require 'test_helper'

class CivicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @civic = civics(:one)
  end

  test "should get index" do
    get civics_url
    assert_response :success
  end

  test "should get new" do
    get new_civic_url
    assert_response :success
  end

  test "should create civic" do
    assert_difference('Civic.count') do
      post civics_url, params: { civic: { chromosome: @civic.chromosome, chromosome2: @civic.chromosome2, citation: @civic.citation, clinical_significance: @civic.clinical_significance, disease: @civic.disease, do_id: @civic.do_id, drug_bank_id: @civic.drug_bank_id, drug_bank_name: @civic.drug_bank_name, drugs: @civic.drugs, ensembl_gene_id: @civic.ensembl_gene_id, ensembl_version: @civic.ensembl_version, entrez_gene_id: @civic.entrez_gene_id, evidence_civic_url: @civic.evidence_civic_url, evidence_direction: @civic.evidence_direction, evidence_id: @civic.evidence_id, evidence_level: @civic.evidence_level, evidence_statement: @civic.evidence_statement, evidence_status: @civic.evidence_status, evidence_type: @civic.evidence_type, gene_civic_url: @civic.gene_civic_url, gene_hgnc_id: @civic.gene_hgnc_id, gene_id: @civic.gene_id, gene_symbol: @civic.gene_symbol, gene_symbol_copy: @civic.gene_symbol_copy, icd_10_codes: @civic.icd_10_codes, last_review_date: @civic.last_review_date, nct_ids: @civic.nct_ids, phenotypes: @civic.phenotypes, pubmed_id: @civic.pubmed_id, rating: @civic.rating, ref_seq_accession: @civic.ref_seq_accession, reference_bases: @civic.reference_bases, reference_build: @civic.reference_build, representative_transcript: @civic.representative_transcript, representative_transcript2: @civic.representative_transcript2, start_position: @civic.start_position, start_position2: @civic.start_position2, stop_position: @civic.stop_position, stop_position2: @civic.stop_position2, variant_bases: @civic.variant_bases, variant_civic_url: @civic.variant_civic_url, variant_id: @civic.variant_id, variant_origin: @civic.variant_origin, variant_summary: @civic.variant_summary, variants: @civic.variants } }
    end

    assert_redirected_to civic_url(Civic.last)
  end

  test "should show civic" do
    get civic_url(@civic)
    assert_response :success
  end

  test "should get edit" do
    get edit_civic_url(@civic)
    assert_response :success
  end

  test "should update civic" do
    patch civic_url(@civic), params: { civic: { chromosome: @civic.chromosome, chromosome2: @civic.chromosome2, citation: @civic.citation, clinical_significance: @civic.clinical_significance, disease: @civic.disease, do_id: @civic.do_id, drug_bank_id: @civic.drug_bank_id, drug_bank_name: @civic.drug_bank_name, drugs: @civic.drugs, ensembl_gene_id: @civic.ensembl_gene_id, ensembl_version: @civic.ensembl_version, entrez_gene_id: @civic.entrez_gene_id, evidence_civic_url: @civic.evidence_civic_url, evidence_direction: @civic.evidence_direction, evidence_id: @civic.evidence_id, evidence_level: @civic.evidence_level, evidence_statement: @civic.evidence_statement, evidence_status: @civic.evidence_status, evidence_type: @civic.evidence_type, gene_civic_url: @civic.gene_civic_url, gene_hgnc_id: @civic.gene_hgnc_id, gene_id: @civic.gene_id, gene_symbol: @civic.gene_symbol, gene_symbol_copy: @civic.gene_symbol_copy, icd_10_codes: @civic.icd_10_codes, last_review_date: @civic.last_review_date, nct_ids: @civic.nct_ids, phenotypes: @civic.phenotypes, pubmed_id: @civic.pubmed_id, rating: @civic.rating, ref_seq_accession: @civic.ref_seq_accession, reference_bases: @civic.reference_bases, reference_build: @civic.reference_build, representative_transcript: @civic.representative_transcript, representative_transcript2: @civic.representative_transcript2, start_position: @civic.start_position, start_position2: @civic.start_position2, stop_position: @civic.stop_position, stop_position2: @civic.stop_position2, variant_bases: @civic.variant_bases, variant_civic_url: @civic.variant_civic_url, variant_id: @civic.variant_id, variant_origin: @civic.variant_origin, variant_summary: @civic.variant_summary, variants: @civic.variants } }
    assert_redirected_to civic_url(@civic)
  end

  test "should destroy civic" do
    assert_difference('Civic.count', -1) do
      delete civic_url(@civic)
    end

    assert_redirected_to civics_url
  end
end
