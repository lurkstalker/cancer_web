require "application_system_test_case"

class OncokbsTest < ApplicationSystemTestCase
  setup do
    @oncokb = oncokbs(:one)
  end

  test "visiting the index" do
    visit oncokbs_url
    assert_selector "h1", text: "Oncokbs"
  end

  test "creating a Oncokb" do
    visit oncokbs_url
    click_on "New Oncokb"

    fill_in "Abstracts drugs", with: @oncokb.abstracts_drugs
    fill_in "Alteration", with: @oncokb.alteration
    fill_in "Cancer type", with: @oncokb.cancer_type
    fill_in "Drug bank", with: @oncokb.drug_bank_id
    fill_in "Drug bank name", with: @oncokb.drug_bank_name
    fill_in "Entrez gene", with: @oncokb.entrez_gene_id
    fill_in "Gene name", with: @oncokb.gene_name
    fill_in "Icd 10 codes", with: @oncokb.icd_10_codes
    fill_in "Isoform", with: @oncokb.isoform
    fill_in "Level type", with: @oncokb.level_type
    fill_in "Oncokb drugs", with: @oncokb.oncokb_drugs
    fill_in "Pmid", with: @oncokb.pmid
    fill_in "Ref seq", with: @oncokb.ref_seq
    click_on "Create Oncokb"

    assert_text "Oncokb was successfully created"
    click_on "Back"
  end

  test "updating a Oncokb" do
    visit oncokbs_url
    click_on "Edit", match: :first

    fill_in "Abstracts drugs", with: @oncokb.abstracts_drugs
    fill_in "Alteration", with: @oncokb.alteration
    fill_in "Cancer type", with: @oncokb.cancer_type
    fill_in "Drug bank", with: @oncokb.drug_bank_id
    fill_in "Drug bank name", with: @oncokb.drug_bank_name
    fill_in "Entrez gene", with: @oncokb.entrez_gene_id
    fill_in "Gene name", with: @oncokb.gene_name
    fill_in "Icd 10 codes", with: @oncokb.icd_10_codes
    fill_in "Isoform", with: @oncokb.isoform
    fill_in "Level type", with: @oncokb.level_type
    fill_in "Oncokb drugs", with: @oncokb.oncokb_drugs
    fill_in "Pmid", with: @oncokb.pmid
    fill_in "Ref seq", with: @oncokb.ref_seq
    click_on "Update Oncokb"

    assert_text "Oncokb was successfully updated"
    click_on "Back"
  end

  test "destroying a Oncokb" do
    visit oncokbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oncokb was successfully destroyed"
  end
end
