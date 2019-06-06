require "application_system_test_case"

class PmkbsTest < ApplicationSystemTestCase
  setup do
    @pmkb = pmkbs(:one)
  end

  test "visiting the index" do
    visit pmkbs_url
    assert_selector "h1", text: "Pmkbs"
  end

  test "creating a Pmkb" do
    visit pmkbs_url
    click_on "New Pmkb"

    fill_in "Entrez gene", with: @pmkb.entrez_gene_id
    fill_in "Gene hgnc", with: @pmkb.gene_hgnc_id
    fill_in "Gene symbol", with: @pmkb.gene_symbol
    fill_in "Intepretations", with: @pmkb.intepretations
    fill_in "Ref seq accession", with: @pmkb.ref_seq_accession
    fill_in "Tier", with: @pmkb.tier
    fill_in "Tissue types", with: @pmkb.tissue_types
    fill_in "Tumor types", with: @pmkb.tumor_types
    fill_in "Variants", with: @pmkb.variants
    click_on "Create Pmkb"

    assert_text "Pmkb was successfully created"
    click_on "Back"
  end

  test "updating a Pmkb" do
    visit pmkbs_url
    click_on "Edit", match: :first

    fill_in "Entrez gene", with: @pmkb.entrez_gene_id
    fill_in "Gene hgnc", with: @pmkb.gene_hgnc_id
    fill_in "Gene symbol", with: @pmkb.gene_symbol
    fill_in "Intepretations", with: @pmkb.intepretations
    fill_in "Ref seq accession", with: @pmkb.ref_seq_accession
    fill_in "Tier", with: @pmkb.tier
    fill_in "Tissue types", with: @pmkb.tissue_types
    fill_in "Tumor types", with: @pmkb.tumor_types
    fill_in "Variants", with: @pmkb.variants
    click_on "Update Pmkb"

    assert_text "Pmkb was successfully updated"
    click_on "Back"
  end

  test "destroying a Pmkb" do
    visit pmkbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pmkb was successfully destroyed"
  end
end
