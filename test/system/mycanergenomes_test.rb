require "application_system_test_case"

class MycanergenomesTest < ApplicationSystemTestCase
  setup do
    @mycanergenome = mycanergenomes(:one)
  end

  test "visiting the index" do
    visit mycanergenomes_url
    assert_selector "h1", text: "Mycanergenomes"
  end

  test "creating a Mycanergenome" do
    visit mycanergenomes_url
    click_on "New Mycanergenome"

    fill_in "Biomarker", with: @mycanergenome.biomarker
    fill_in "Data original", with: @mycanergenome.data_original
    fill_in "Drugs", with: @mycanergenome.drugs
    fill_in "High level", with: @mycanergenome.high_level
    fill_in "Low level", with: @mycanergenome.low_level
    fill_in "Num ref", with: @mycanergenome.num_ref
    fill_in "Orgin cancer", with: @mycanergenome.orgin_cancer
    fill_in "Patient percent", with: @mycanergenome.patient_percent
    fill_in "Second cancer", with: @mycanergenome.second_cancer
    fill_in "Treatment protein", with: @mycanergenome.treatment_protein
    click_on "Create Mycanergenome"

    assert_text "Mycanergenome was successfully created"
    click_on "Back"
  end

  test "updating a Mycanergenome" do
    visit mycanergenomes_url
    click_on "Edit", match: :first

    fill_in "Biomarker", with: @mycanergenome.biomarker
    fill_in "Data original", with: @mycanergenome.data_original
    fill_in "Drugs", with: @mycanergenome.drugs
    fill_in "High level", with: @mycanergenome.high_level
    fill_in "Low level", with: @mycanergenome.low_level
    fill_in "Num ref", with: @mycanergenome.num_ref
    fill_in "Orgin cancer", with: @mycanergenome.orgin_cancer
    fill_in "Patient percent", with: @mycanergenome.patient_percent
    fill_in "Second cancer", with: @mycanergenome.second_cancer
    fill_in "Treatment protein", with: @mycanergenome.treatment_protein
    click_on "Update Mycanergenome"

    assert_text "Mycanergenome was successfully updated"
    click_on "Back"
  end

  test "destroying a Mycanergenome" do
    visit mycanergenomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mycanergenome was successfully destroyed"
  end
end
