require "application_system_test_case"

class CivicsTest < ApplicationSystemTestCase
  setup do
    @civic = civics(:one)
  end

  test "visiting the index" do
    visit civics_url
    assert_selector "h1", text: "Civics"
  end

  test "creating a Civic" do
    visit civics_url
    click_on "New Civic"

    fill_in "Chromosome", with: @civic.chromosome
    fill_in "Chromosome2", with: @civic.chromosome2
    fill_in "Citation", with: @civic.citation
    fill_in "Clinical significance", with: @civic.clinical_significance
    fill_in "Disease", with: @civic.disease
    fill_in "Do", with: @civic.do_id
    fill_in "Drug bank", with: @civic.drug_bank_id
    fill_in "Drug bank name", with: @civic.drug_bank_name
    fill_in "Drugs", with: @civic.drugs
    fill_in "Ensembl gene", with: @civic.ensembl_gene_id
    fill_in "Ensembl version", with: @civic.ensembl_version
    fill_in "Entrez gene", with: @civic.entrez_gene_id
    fill_in "Evidence civic url", with: @civic.evidence_civic_url
    fill_in "Evidence direction", with: @civic.evidence_direction
    fill_in "Evidence", with: @civic.evidence_id
    fill_in "Evidence level", with: @civic.evidence_level
    fill_in "Evidence statement", with: @civic.evidence_statement
    fill_in "Evidence status", with: @civic.evidence_status
    fill_in "Evidence type", with: @civic.evidence_type
    fill_in "Gene civic url", with: @civic.gene_civic_url
    fill_in "Gene hgnc", with: @civic.gene_hgnc_id
    fill_in "Gene", with: @civic.gene_id
    fill_in "Gene symbol", with: @civic.gene_symbol
    fill_in "Gene symbol copy", with: @civic.gene_symbol_copy
    fill_in "Icd 10 codes", with: @civic.icd_10_codes
    fill_in "Last review date", with: @civic.last_review_date
    fill_in "Nct ids", with: @civic.nct_ids
    fill_in "Phenotypes", with: @civic.phenotypes
    fill_in "Pubmed", with: @civic.pubmed_id
    fill_in "Rating", with: @civic.rating
    fill_in "Ref seq accession", with: @civic.ref_seq_accession
    fill_in "Reference bases", with: @civic.reference_bases
    fill_in "Reference build", with: @civic.reference_build
    fill_in "Representative transcript", with: @civic.representative_transcript
    fill_in "Representative transcript2", with: @civic.representative_transcript2
    fill_in "Start position", with: @civic.start_position
    fill_in "Start position2", with: @civic.start_position2
    fill_in "Stop position", with: @civic.stop_position
    fill_in "Stop position2", with: @civic.stop_position2
    fill_in "Variant bases", with: @civic.variant_bases
    fill_in "Variant civic url", with: @civic.variant_civic_url
    fill_in "Variant", with: @civic.variant_id
    fill_in "Variant origin", with: @civic.variant_origin
    fill_in "Variant summary", with: @civic.variant_summary
    fill_in "Variants", with: @civic.variants
    click_on "Create Civic"

    assert_text "Civic was successfully created"
    click_on "Back"
  end

  test "updating a Civic" do
    visit civics_url
    click_on "Edit", match: :first

    fill_in "Chromosome", with: @civic.chromosome
    fill_in "Chromosome2", with: @civic.chromosome2
    fill_in "Citation", with: @civic.citation
    fill_in "Clinical significance", with: @civic.clinical_significance
    fill_in "Disease", with: @civic.disease
    fill_in "Do", with: @civic.do_id
    fill_in "Drug bank", with: @civic.drug_bank_id
    fill_in "Drug bank name", with: @civic.drug_bank_name
    fill_in "Drugs", with: @civic.drugs
    fill_in "Ensembl gene", with: @civic.ensembl_gene_id
    fill_in "Ensembl version", with: @civic.ensembl_version
    fill_in "Entrez gene", with: @civic.entrez_gene_id
    fill_in "Evidence civic url", with: @civic.evidence_civic_url
    fill_in "Evidence direction", with: @civic.evidence_direction
    fill_in "Evidence", with: @civic.evidence_id
    fill_in "Evidence level", with: @civic.evidence_level
    fill_in "Evidence statement", with: @civic.evidence_statement
    fill_in "Evidence status", with: @civic.evidence_status
    fill_in "Evidence type", with: @civic.evidence_type
    fill_in "Gene civic url", with: @civic.gene_civic_url
    fill_in "Gene hgnc", with: @civic.gene_hgnc_id
    fill_in "Gene", with: @civic.gene_id
    fill_in "Gene symbol", with: @civic.gene_symbol
    fill_in "Gene symbol copy", with: @civic.gene_symbol_copy
    fill_in "Icd 10 codes", with: @civic.icd_10_codes
    fill_in "Last review date", with: @civic.last_review_date
    fill_in "Nct ids", with: @civic.nct_ids
    fill_in "Phenotypes", with: @civic.phenotypes
    fill_in "Pubmed", with: @civic.pubmed_id
    fill_in "Rating", with: @civic.rating
    fill_in "Ref seq accession", with: @civic.ref_seq_accession
    fill_in "Reference bases", with: @civic.reference_bases
    fill_in "Reference build", with: @civic.reference_build
    fill_in "Representative transcript", with: @civic.representative_transcript
    fill_in "Representative transcript2", with: @civic.representative_transcript2
    fill_in "Start position", with: @civic.start_position
    fill_in "Start position2", with: @civic.start_position2
    fill_in "Stop position", with: @civic.stop_position
    fill_in "Stop position2", with: @civic.stop_position2
    fill_in "Variant bases", with: @civic.variant_bases
    fill_in "Variant civic url", with: @civic.variant_civic_url
    fill_in "Variant", with: @civic.variant_id
    fill_in "Variant origin", with: @civic.variant_origin
    fill_in "Variant summary", with: @civic.variant_summary
    fill_in "Variants", with: @civic.variants
    click_on "Update Civic"

    assert_text "Civic was successfully updated"
    click_on "Back"
  end

  test "destroying a Civic" do
    visit civics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Civic was successfully destroyed"
  end
end
