require "application_system_test_case"

class CanSarCancerGeneCensusesTest < ApplicationSystemTestCase
  setup do
    @can_sar_cancer_gene_censuse = can_sar_cancer_gene_censuses(:one)
  end

  test "visiting the index" do
    visit can_sar_cancer_gene_censuses_url
    assert_selector "h1", text: "Can Sar Cancer Gene Censuses"
  end

  test "creating a Can sar cancer gene censuse" do
    visit can_sar_cancer_gene_censuses_url
    click_on "New Can Sar Cancer Gene Censuse"

    fill_in "Cancer syndrome", with: @can_sar_cancer_gene_censuse.cancer_syndrome
    fill_in "Chr band", with: @can_sar_cancer_gene_censuse.chr_band
    fill_in "Entrez gene id", with: @can_sar_cancer_gene_censuse.entrez_gene_Id
    fill_in "Gemline", with: @can_sar_cancer_gene_censuse.gemline
    fill_in "Gene name", with: @can_sar_cancer_gene_censuse.gene_name
    fill_in "Gene symbol", with: @can_sar_cancer_gene_censuse.gene_symbol
    fill_in "Genome location", with: @can_sar_cancer_gene_censuse.genome_location
    fill_in "Hallmark", with: @can_sar_cancer_gene_censuse.hallmark
    fill_in "Molecular genetics", with: @can_sar_cancer_gene_censuse.molecular_genetics
    fill_in "Mutation types", with: @can_sar_cancer_gene_censuse.mutation_types
    fill_in "Other germline mut", with: @can_sar_cancer_gene_censuse.other_germline_mut
    fill_in "Other syndrome", with: @can_sar_cancer_gene_censuse.other_syndrome
    fill_in "Role in cancer", with: @can_sar_cancer_gene_censuse.role_in_cancer
    fill_in "Somatic", with: @can_sar_cancer_gene_censuse.somatic
    fill_in "Synonyms", with: @can_sar_cancer_gene_censuse.synonyms
    fill_in "Tier", with: @can_sar_cancer_gene_censuse.tier
    fill_in "Tissue types", with: @can_sar_cancer_gene_censuse.tissue_types
    fill_in "Translocation partner", with: @can_sar_cancer_gene_censuse.translocation_partner
    fill_in "Tumor types germline", with: @can_sar_cancer_gene_censuse.tumor_types_germline
    fill_in "Tumor types somatic", with: @can_sar_cancer_gene_censuse.tumor_types_somatic
    click_on "Create Can sar cancer gene censuse"

    assert_text "Can sar cancer gene censuse was successfully created"
    click_on "Back"
  end

  test "updating a Can sar cancer gene censuse" do
    visit can_sar_cancer_gene_censuses_url
    click_on "Edit", match: :first

    fill_in "Cancer syndrome", with: @can_sar_cancer_gene_censuse.cancer_syndrome
    fill_in "Chr band", with: @can_sar_cancer_gene_censuse.chr_band
    fill_in "Entrez gene id", with: @can_sar_cancer_gene_censuse.entrez_gene_Id
    fill_in "Gemline", with: @can_sar_cancer_gene_censuse.gemline
    fill_in "Gene name", with: @can_sar_cancer_gene_censuse.gene_name
    fill_in "Gene symbol", with: @can_sar_cancer_gene_censuse.gene_symbol
    fill_in "Genome location", with: @can_sar_cancer_gene_censuse.genome_location
    fill_in "Hallmark", with: @can_sar_cancer_gene_censuse.hallmark
    fill_in "Molecular genetics", with: @can_sar_cancer_gene_censuse.molecular_genetics
    fill_in "Mutation types", with: @can_sar_cancer_gene_censuse.mutation_types
    fill_in "Other germline mut", with: @can_sar_cancer_gene_censuse.other_germline_mut
    fill_in "Other syndrome", with: @can_sar_cancer_gene_censuse.other_syndrome
    fill_in "Role in cancer", with: @can_sar_cancer_gene_censuse.role_in_cancer
    fill_in "Somatic", with: @can_sar_cancer_gene_censuse.somatic
    fill_in "Synonyms", with: @can_sar_cancer_gene_censuse.synonyms
    fill_in "Tier", with: @can_sar_cancer_gene_censuse.tier
    fill_in "Tissue types", with: @can_sar_cancer_gene_censuse.tissue_types
    fill_in "Translocation partner", with: @can_sar_cancer_gene_censuse.translocation_partner
    fill_in "Tumor types germline", with: @can_sar_cancer_gene_censuse.tumor_types_germline
    fill_in "Tumor types somatic", with: @can_sar_cancer_gene_censuse.tumor_types_somatic
    click_on "Update Can sar cancer gene censuse"

    assert_text "Can sar cancer gene censuse was successfully updated"
    click_on "Back"
  end

  test "destroying a Can sar cancer gene censuse" do
    visit can_sar_cancer_gene_censuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Can sar cancer gene censuse was successfully destroyed"
  end
end
