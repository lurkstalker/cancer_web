require "application_system_test_case"

class DgidbsTest < ApplicationSystemTestCase
  setup do
    @dgidb = dgidbs(:one)
  end

  test "visiting the index" do
    visit dgidbs_url
    assert_selector "h1", text: "Dgidbs"
  end

  test "creating a Dgidb" do
    visit dgidbs_url
    click_on "New Dgidb"

    fill_in "Drug bank", with: @dgidb.drug_bank_id
    fill_in "Drug bank name", with: @dgidb.drug_bank_name
    fill_in "Drug chembl", with: @dgidb.drug_chembl_id
    fill_in "Drug claim name", with: @dgidb.drug_claim_name
    fill_in "Drug claim primary name", with: @dgidb.drug_claim_primary_name
    fill_in "Drug name", with: @dgidb.drug_name
    fill_in "Ensembl gene", with: @dgidb.ensembl_gene_id
    fill_in "Entrez gene", with: @dgidb.entrez_gene_id
    fill_in "Gene claim name", with: @dgidb.gene_claim_name
    fill_in "Gene hgnc", with: @dgidb.gene_hgnc_id
    fill_in "Gene name", with: @dgidb.gene_name
    fill_in "Hgnc complete set name", with: @dgidb.hgnc_complete_set_name
    fill_in "Interation claim source", with: @dgidb.interation_claim_source
    fill_in "Interation types", with: @dgidb.interation_types
    fill_in "Pubmed", with: @dgidb.pubmed_id
    fill_in "Ref seq accession", with: @dgidb.ref_seq_accession
    click_on "Create Dgidb"

    assert_text "Dgidb was successfully created"
    click_on "Back"
  end

  test "updating a Dgidb" do
    visit dgidbs_url
    click_on "Edit", match: :first

    fill_in "Drug bank", with: @dgidb.drug_bank_id
    fill_in "Drug bank name", with: @dgidb.drug_bank_name
    fill_in "Drug chembl", with: @dgidb.drug_chembl_id
    fill_in "Drug claim name", with: @dgidb.drug_claim_name
    fill_in "Drug claim primary name", with: @dgidb.drug_claim_primary_name
    fill_in "Drug name", with: @dgidb.drug_name
    fill_in "Ensembl gene", with: @dgidb.ensembl_gene_id
    fill_in "Entrez gene", with: @dgidb.entrez_gene_id
    fill_in "Gene claim name", with: @dgidb.gene_claim_name
    fill_in "Gene hgnc", with: @dgidb.gene_hgnc_id
    fill_in "Gene name", with: @dgidb.gene_name
    fill_in "Hgnc complete set name", with: @dgidb.hgnc_complete_set_name
    fill_in "Interation claim source", with: @dgidb.interation_claim_source
    fill_in "Interation types", with: @dgidb.interation_types
    fill_in "Pubmed", with: @dgidb.pubmed_id
    fill_in "Ref seq accession", with: @dgidb.ref_seq_accession
    click_on "Update Dgidb"

    assert_text "Dgidb was successfully updated"
    click_on "Back"
  end

  test "destroying a Dgidb" do
    visit dgidbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dgidb was successfully destroyed"
  end
end
