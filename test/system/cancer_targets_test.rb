require "application_system_test_case"

class CancerTargetsTest < ApplicationSystemTestCase
  setup do
    @cancer_target = cancer_targets(:one)
  end

  test "visiting the index" do
    visit cancer_targets_url
    assert_selector "h1", text: "Cancer Targets"
  end

  test "creating a Cancer target" do
    visit cancer_targets_url
    click_on "New Cancer Target"

    fill_in "Cancer syndrome", with: @cancer_target.cancer_syndrome
    fill_in "Chr band", with: @cancer_target.chr_band
    fill_in "Entrez gene id", with: @cancer_target.entrez_gene_Id
    fill_in "Gemline", with: @cancer_target.gemline
    fill_in "Gene name", with: @cancer_target.gene_name
    fill_in "Gene symbol", with: @cancer_target.gene_symbol
    fill_in "Genome location", with: @cancer_target.genome_location
    fill_in "Hallmark", with: @cancer_target.hallmark
    fill_in "Molecular genetics", with: @cancer_target.molecular_genetics
    fill_in "Mutation types", with: @cancer_target.mutation_types
    fill_in "Other germline mut", with: @cancer_target.other_germline_mut
    fill_in "Other syndrome", with: @cancer_target.other_syndrome
    fill_in "Role in cancer", with: @cancer_target.role_in_cancer
    fill_in "Somatic", with: @cancer_target.somatic
    fill_in "Synonyms", with: @cancer_target.synonyms
    fill_in "Tier", with: @cancer_target.tier
    fill_in "Tissue types", with: @cancer_target.tissue_types
    fill_in "Translocation partner", with: @cancer_target.translocation_partner
    fill_in "Tumor types germline", with: @cancer_target.tumor_types_germline
    fill_in "Tumor types somatic", with: @cancer_target.tumor_types_somatic
    click_on "Create Cancer target"

    assert_text "Cancer target was successfully created"
    click_on "Back"
  end

  test "updating a Cancer target" do
    visit cancer_targets_url
    click_on "Edit", match: :first

    fill_in "Cancer syndrome", with: @cancer_target.cancer_syndrome
    fill_in "Chr band", with: @cancer_target.chr_band
    fill_in "Entrez gene id", with: @cancer_target.entrez_gene_Id
    fill_in "Gemline", with: @cancer_target.gemline
    fill_in "Gene name", with: @cancer_target.gene_name
    fill_in "Gene symbol", with: @cancer_target.gene_symbol
    fill_in "Genome location", with: @cancer_target.genome_location
    fill_in "Hallmark", with: @cancer_target.hallmark
    fill_in "Molecular genetics", with: @cancer_target.molecular_genetics
    fill_in "Mutation types", with: @cancer_target.mutation_types
    fill_in "Other germline mut", with: @cancer_target.other_germline_mut
    fill_in "Other syndrome", with: @cancer_target.other_syndrome
    fill_in "Role in cancer", with: @cancer_target.role_in_cancer
    fill_in "Somatic", with: @cancer_target.somatic
    fill_in "Synonyms", with: @cancer_target.synonyms
    fill_in "Tier", with: @cancer_target.tier
    fill_in "Tissue types", with: @cancer_target.tissue_types
    fill_in "Translocation partner", with: @cancer_target.translocation_partner
    fill_in "Tumor types germline", with: @cancer_target.tumor_types_germline
    fill_in "Tumor types somatic", with: @cancer_target.tumor_types_somatic
    click_on "Update Cancer target"

    assert_text "Cancer target was successfully updated"
    click_on "Back"
  end

  test "destroying a Cancer target" do
    visit cancer_targets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cancer target was successfully destroyed"
  end
end
