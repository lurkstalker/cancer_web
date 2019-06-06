require 'test_helper'

class MycanergenomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mycanergenome = mycanergenomes(:one)
  end

  test "should get index" do
    get mycanergenomes_url
    assert_response :success
  end

  test "should get new" do
    get new_mycanergenome_url
    assert_response :success
  end

  test "should create mycanergenome" do
    assert_difference('Mycanergenome.count') do
      post mycanergenomes_url, params: { mycanergenome: { biomarker: @mycanergenome.biomarker, data_original: @mycanergenome.data_original, drugs: @mycanergenome.drugs, high_level: @mycanergenome.high_level, low_level: @mycanergenome.low_level, num_ref: @mycanergenome.num_ref, orgin_cancer: @mycanergenome.orgin_cancer, patient_percent: @mycanergenome.patient_percent, second_cancer: @mycanergenome.second_cancer, treatment_protein: @mycanergenome.treatment_protein } }
    end

    assert_redirected_to mycanergenome_url(Mycanergenome.last)
  end

  test "should show mycanergenome" do
    get mycanergenome_url(@mycanergenome)
    assert_response :success
  end

  test "should get edit" do
    get edit_mycanergenome_url(@mycanergenome)
    assert_response :success
  end

  test "should update mycanergenome" do
    patch mycanergenome_url(@mycanergenome), params: { mycanergenome: { biomarker: @mycanergenome.biomarker, data_original: @mycanergenome.data_original, drugs: @mycanergenome.drugs, high_level: @mycanergenome.high_level, low_level: @mycanergenome.low_level, num_ref: @mycanergenome.num_ref, orgin_cancer: @mycanergenome.orgin_cancer, patient_percent: @mycanergenome.patient_percent, second_cancer: @mycanergenome.second_cancer, treatment_protein: @mycanergenome.treatment_protein } }
    assert_redirected_to mycanergenome_url(@mycanergenome)
  end

  test "should destroy mycanergenome" do
    assert_difference('Mycanergenome.count', -1) do
      delete mycanergenome_url(@mycanergenome)
    end

    assert_redirected_to mycanergenomes_url
  end
end
