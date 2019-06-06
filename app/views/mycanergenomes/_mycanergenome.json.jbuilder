json.extract! mycanergenome, :id, :biomarker, :patient_percent, :low_level, :high_level, :treatment_protein, :drugs, :orgin_cancer, :second_cancer, :data_original, :num_ref, :created_at, :updated_at
json.url mycanergenome_url(mycanergenome, format: :json)
