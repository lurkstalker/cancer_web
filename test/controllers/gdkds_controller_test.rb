require 'test_helper'

class GdkdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gdkd = gdkds(:one)
  end

  test "should get index" do
    get gdkds_url
    assert_response :success
  end

  test "should get new" do
    get new_gdkd_url
    assert_response :success
  end

  test "should create gdkd" do
    assert_difference('Gdkd.count') do
      post gdkds_url, params: { gdkd: { Association1: @gdkd.Association1, Association2: @gdkd.Association2, Association3: @gdkd.Association3, Association4: @gdkd.Association4, Association5: @gdkd.Association5, Association6: @gdkd.Association6, Association7: @gdkd.Association7, Association8: @gdkd.Association8, BiologicalRelevancePMID: @gdkd.BiologicalRelevancePMID, Description: @gdkd.Description, Diagnostic: @gdkd.Diagnostic, Disease: @gdkd.Disease, DrugBankID1: @gdkd.DrugBankID1, DrugBankID2: @gdkd.DrugBankID2, DrugBankName1: @gdkd.DrugBankName1, DrugBankName2: @gdkd.DrugBankName2, Effect: @gdkd.Effect, Evidence1: @gdkd.Evidence1, Evidence2: @gdkd.Evidence2, Evidence3: @gdkd.Evidence3, Evidence4: @gdkd.Evidence4, Evidence5: @gdkd.Evidence5, Evidence6: @gdkd.Evidence6, Evidence7: @gdkd.Evidence7, Evidence8: @gdkd.Evidence8, Gene: @gdkd.Gene, PMID1: @gdkd.PMID1, PMID10: @gdkd.PMID10, PMID2: @gdkd.PMID2, PMID3: @gdkd.PMID3, PMID4: @gdkd.PMID4, PMID5: @gdkd.PMID5, PMID6: @gdkd.PMID6, PMID7: @gdkd.PMID7, PMID8: @gdkd.PMID8, PMID9: @gdkd.PMID9, Pathway: @gdkd.Pathway, Prognostic: @gdkd.Prognostic, Status1: @gdkd.Status1, Status2: @gdkd.Status2, Status3: @gdkd.Status3, Status4: @gdkd.Status4, Status5: @gdkd.Status5, Status6: @gdkd.Status6, Status7: @gdkd.Status7, Status8: @gdkd.Status8, TherapeuticContext1: @gdkd.TherapeuticContext1, TherapeuticContext2: @gdkd.TherapeuticContext2, TherapeuticContext3: @gdkd.TherapeuticContext3, TherapeuticContext4: @gdkd.TherapeuticContext4, TherapeuticContext5: @gdkd.TherapeuticContext5, TherapeuticContext6: @gdkd.TherapeuticContext6, TherapeuticContext7: @gdkd.TherapeuticContext7, TherapeuticContext8: @gdkd.TherapeuticContext8, Variant: @gdkd.Variant, ensembl_gene_id: @gdkd.ensembl_gene_id, hgnc_id: @gdkd.hgnc_id, icd10: @gdkd.icd10, id: @gdkd.id, refseq_accession: @gdkd.refseq_accession } }
    end

    assert_redirected_to gdkd_url(Gdkd.last)
  end

  test "should show gdkd" do
    get gdkd_url(@gdkd)
    assert_response :success
  end

  test "should get edit" do
    get edit_gdkd_url(@gdkd)
    assert_response :success
  end

  test "should update gdkd" do
    patch gdkd_url(@gdkd), params: { gdkd: { Association1: @gdkd.Association1, Association2: @gdkd.Association2, Association3: @gdkd.Association3, Association4: @gdkd.Association4, Association5: @gdkd.Association5, Association6: @gdkd.Association6, Association7: @gdkd.Association7, Association8: @gdkd.Association8, BiologicalRelevancePMID: @gdkd.BiologicalRelevancePMID, Description: @gdkd.Description, Diagnostic: @gdkd.Diagnostic, Disease: @gdkd.Disease, DrugBankID1: @gdkd.DrugBankID1, DrugBankID2: @gdkd.DrugBankID2, DrugBankName1: @gdkd.DrugBankName1, DrugBankName2: @gdkd.DrugBankName2, Effect: @gdkd.Effect, Evidence1: @gdkd.Evidence1, Evidence2: @gdkd.Evidence2, Evidence3: @gdkd.Evidence3, Evidence4: @gdkd.Evidence4, Evidence5: @gdkd.Evidence5, Evidence6: @gdkd.Evidence6, Evidence7: @gdkd.Evidence7, Evidence8: @gdkd.Evidence8, Gene: @gdkd.Gene, PMID1: @gdkd.PMID1, PMID10: @gdkd.PMID10, PMID2: @gdkd.PMID2, PMID3: @gdkd.PMID3, PMID4: @gdkd.PMID4, PMID5: @gdkd.PMID5, PMID6: @gdkd.PMID6, PMID7: @gdkd.PMID7, PMID8: @gdkd.PMID8, PMID9: @gdkd.PMID9, Pathway: @gdkd.Pathway, Prognostic: @gdkd.Prognostic, Status1: @gdkd.Status1, Status2: @gdkd.Status2, Status3: @gdkd.Status3, Status4: @gdkd.Status4, Status5: @gdkd.Status5, Status6: @gdkd.Status6, Status7: @gdkd.Status7, Status8: @gdkd.Status8, TherapeuticContext1: @gdkd.TherapeuticContext1, TherapeuticContext2: @gdkd.TherapeuticContext2, TherapeuticContext3: @gdkd.TherapeuticContext3, TherapeuticContext4: @gdkd.TherapeuticContext4, TherapeuticContext5: @gdkd.TherapeuticContext5, TherapeuticContext6: @gdkd.TherapeuticContext6, TherapeuticContext7: @gdkd.TherapeuticContext7, TherapeuticContext8: @gdkd.TherapeuticContext8, Variant: @gdkd.Variant, ensembl_gene_id: @gdkd.ensembl_gene_id, hgnc_id: @gdkd.hgnc_id, icd10: @gdkd.icd10, id: @gdkd.id, refseq_accession: @gdkd.refseq_accession } }
    assert_redirected_to gdkd_url(@gdkd)
  end

  test "should destroy gdkd" do
    assert_difference('Gdkd.count', -1) do
      delete gdkd_url(@gdkd)
    end

    assert_redirected_to gdkds_url
  end
end
