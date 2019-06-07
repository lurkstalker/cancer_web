require "application_system_test_case"

class GdkdsTest < ApplicationSystemTestCase
  setup do
    @gdkd = gdkds(:one)
  end

  test "visiting the index" do
    visit gdkds_url
    assert_selector "h1", text: "Gdkds"
  end

  test "creating a Gdkd" do
    visit gdkds_url
    click_on "New Gdkd"

    fill_in "Association1", with: @gdkd.Association1
    fill_in "Association2", with: @gdkd.Association2
    fill_in "Association3", with: @gdkd.Association3
    fill_in "Association4", with: @gdkd.Association4
    fill_in "Association5", with: @gdkd.Association5
    fill_in "Association6", with: @gdkd.Association6
    fill_in "Association7", with: @gdkd.Association7
    fill_in "Association8", with: @gdkd.Association8
    fill_in "Biologicalrelevancepmid", with: @gdkd.BiologicalRelevancePMID
    fill_in "Description", with: @gdkd.Description
    fill_in "Diagnostic", with: @gdkd.Diagnostic
    fill_in "Disease", with: @gdkd.Disease
    fill_in "Drugbankid1", with: @gdkd.DrugBankID1
    fill_in "Drugbankid2", with: @gdkd.DrugBankID2
    fill_in "Drugbankname1", with: @gdkd.DrugBankName1
    fill_in "Drugbankname2", with: @gdkd.DrugBankName2
    fill_in "Effect", with: @gdkd.Effect
    fill_in "Evidence1", with: @gdkd.Evidence1
    fill_in "Evidence2", with: @gdkd.Evidence2
    fill_in "Evidence3", with: @gdkd.Evidence3
    fill_in "Evidence4", with: @gdkd.Evidence4
    fill_in "Evidence5", with: @gdkd.Evidence5
    fill_in "Evidence6", with: @gdkd.Evidence6
    fill_in "Evidence7", with: @gdkd.Evidence7
    fill_in "Evidence8", with: @gdkd.Evidence8
    fill_in "Gene", with: @gdkd.Gene
    fill_in "Pmid1", with: @gdkd.PMID1
    fill_in "Pmid10", with: @gdkd.PMID10
    fill_in "Pmid2", with: @gdkd.PMID2
    fill_in "Pmid3", with: @gdkd.PMID3
    fill_in "Pmid4", with: @gdkd.PMID4
    fill_in "Pmid5", with: @gdkd.PMID5
    fill_in "Pmid6", with: @gdkd.PMID6
    fill_in "Pmid7", with: @gdkd.PMID7
    fill_in "Pmid8", with: @gdkd.PMID8
    fill_in "Pmid9", with: @gdkd.PMID9
    fill_in "Pathway", with: @gdkd.Pathway
    fill_in "Prognostic", with: @gdkd.Prognostic
    fill_in "Status1", with: @gdkd.Status1
    fill_in "Status2", with: @gdkd.Status2
    fill_in "Status3", with: @gdkd.Status3
    fill_in "Status4", with: @gdkd.Status4
    fill_in "Status5", with: @gdkd.Status5
    fill_in "Status6", with: @gdkd.Status6
    fill_in "Status7", with: @gdkd.Status7
    fill_in "Status8", with: @gdkd.Status8
    fill_in "Therapeuticcontext1", with: @gdkd.TherapeuticContext1
    fill_in "Therapeuticcontext2", with: @gdkd.TherapeuticContext2
    fill_in "Therapeuticcontext3", with: @gdkd.TherapeuticContext3
    fill_in "Therapeuticcontext4", with: @gdkd.TherapeuticContext4
    fill_in "Therapeuticcontext5", with: @gdkd.TherapeuticContext5
    fill_in "Therapeuticcontext6", with: @gdkd.TherapeuticContext6
    fill_in "Therapeuticcontext7", with: @gdkd.TherapeuticContext7
    fill_in "Therapeuticcontext8", with: @gdkd.TherapeuticContext8
    fill_in "Variant", with: @gdkd.Variant
    fill_in "Ensembl gene", with: @gdkd.ensembl_gene_id
    fill_in "Hgnc", with: @gdkd.hgnc_id
    fill_in "Icd10", with: @gdkd.icd10
    fill_in "Id", with: @gdkd.id
    fill_in "Refseq accession", with: @gdkd.refseq_accession
    click_on "Create Gdkd"

    assert_text "Gdkd was successfully created"
    click_on "Back"
  end

  test "updating a Gdkd" do
    visit gdkds_url
    click_on "Edit", match: :first

    fill_in "Association1", with: @gdkd.Association1
    fill_in "Association2", with: @gdkd.Association2
    fill_in "Association3", with: @gdkd.Association3
    fill_in "Association4", with: @gdkd.Association4
    fill_in "Association5", with: @gdkd.Association5
    fill_in "Association6", with: @gdkd.Association6
    fill_in "Association7", with: @gdkd.Association7
    fill_in "Association8", with: @gdkd.Association8
    fill_in "Biologicalrelevancepmid", with: @gdkd.BiologicalRelevancePMID
    fill_in "Description", with: @gdkd.Description
    fill_in "Diagnostic", with: @gdkd.Diagnostic
    fill_in "Disease", with: @gdkd.Disease
    fill_in "Drugbankid1", with: @gdkd.DrugBankID1
    fill_in "Drugbankid2", with: @gdkd.DrugBankID2
    fill_in "Drugbankname1", with: @gdkd.DrugBankName1
    fill_in "Drugbankname2", with: @gdkd.DrugBankName2
    fill_in "Effect", with: @gdkd.Effect
    fill_in "Evidence1", with: @gdkd.Evidence1
    fill_in "Evidence2", with: @gdkd.Evidence2
    fill_in "Evidence3", with: @gdkd.Evidence3
    fill_in "Evidence4", with: @gdkd.Evidence4
    fill_in "Evidence5", with: @gdkd.Evidence5
    fill_in "Evidence6", with: @gdkd.Evidence6
    fill_in "Evidence7", with: @gdkd.Evidence7
    fill_in "Evidence8", with: @gdkd.Evidence8
    fill_in "Gene", with: @gdkd.Gene
    fill_in "Pmid1", with: @gdkd.PMID1
    fill_in "Pmid10", with: @gdkd.PMID10
    fill_in "Pmid2", with: @gdkd.PMID2
    fill_in "Pmid3", with: @gdkd.PMID3
    fill_in "Pmid4", with: @gdkd.PMID4
    fill_in "Pmid5", with: @gdkd.PMID5
    fill_in "Pmid6", with: @gdkd.PMID6
    fill_in "Pmid7", with: @gdkd.PMID7
    fill_in "Pmid8", with: @gdkd.PMID8
    fill_in "Pmid9", with: @gdkd.PMID9
    fill_in "Pathway", with: @gdkd.Pathway
    fill_in "Prognostic", with: @gdkd.Prognostic
    fill_in "Status1", with: @gdkd.Status1
    fill_in "Status2", with: @gdkd.Status2
    fill_in "Status3", with: @gdkd.Status3
    fill_in "Status4", with: @gdkd.Status4
    fill_in "Status5", with: @gdkd.Status5
    fill_in "Status6", with: @gdkd.Status6
    fill_in "Status7", with: @gdkd.Status7
    fill_in "Status8", with: @gdkd.Status8
    fill_in "Therapeuticcontext1", with: @gdkd.TherapeuticContext1
    fill_in "Therapeuticcontext2", with: @gdkd.TherapeuticContext2
    fill_in "Therapeuticcontext3", with: @gdkd.TherapeuticContext3
    fill_in "Therapeuticcontext4", with: @gdkd.TherapeuticContext4
    fill_in "Therapeuticcontext5", with: @gdkd.TherapeuticContext5
    fill_in "Therapeuticcontext6", with: @gdkd.TherapeuticContext6
    fill_in "Therapeuticcontext7", with: @gdkd.TherapeuticContext7
    fill_in "Therapeuticcontext8", with: @gdkd.TherapeuticContext8
    fill_in "Variant", with: @gdkd.Variant
    fill_in "Ensembl gene", with: @gdkd.ensembl_gene_id
    fill_in "Hgnc", with: @gdkd.hgnc_id
    fill_in "Icd10", with: @gdkd.icd10
    fill_in "Id", with: @gdkd.id
    fill_in "Refseq accession", with: @gdkd.refseq_accession
    click_on "Update Gdkd"

    assert_text "Gdkd was successfully updated"
    click_on "Back"
  end

  test "destroying a Gdkd" do
    visit gdkds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gdkd was successfully destroyed"
  end
end
