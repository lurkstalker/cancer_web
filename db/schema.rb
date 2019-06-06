# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_04_184917) do

  create_table "canSAR_cancer_gene_censuses", id: false, force: :cascade do |t|
    t.string "gene_symbol", limit: 20, null: false
    t.string "gene_name", limit: 200, null: false
    t.integer "entrez_gene_Id", null: false
    t.string "genome_location", limit: 40, null: false
    t.integer "tier", null: false
    t.string "hallmark", limit: 3
    t.string "chr_band", limit: 40, null: false
    t.string "somatic", limit: 3
    t.string "gemline", limit: 3
    t.string "tumor_types_somatic", limit: 220
    t.string "tumor_types_germline", limit: 100
    t.string "cancer_syndrome", limit: 100
    t.string "tissue_types", limit: 10
    t.string "molecular_genetics", limit: 10
    t.string "role_in_cancer", limit: 40
    t.string "mutation_types", limit: 20
    t.string "translocation_partner", limit: 450
    t.string "other_germline_mut", limit: 3
    t.string "other_syndrome", limit: 300
    t.string "synonyms", limit: 100
  end

  create_table "civics", id: false, force: :cascade do |t|
    t.string "gene_symbol_copy", limit: 20, null: false
    t.string "gene_symbol", limit: 20, null: false
    t.string "gene_hgnc_id", limit: 40, null: false
    t.string "ensembl_gene_id", limit: 40, null: false
    t.string "ref_seq_accession", limit: 40, null: false
    t.integer "entrez_gene_id", null: false
    t.string "variants", limit: 40, null: false
    t.string "disease", limit: 100, null: false
    t.integer "do_id"
    t.string "phenotypes", limit: 100
    t.string "drugs", limit: 200, null: false
    t.string "evidence_type", limit: 50, null: false
    t.string "evidence_direction", limit: 40, null: false
    t.string "evidence_level", limit: 3, null: false
    t.string "clinical_significance", limit: 40, null: false
    t.string "evidence_statement", limit: 1500, null: false
    t.integer "pubmed_id", null: false
    t.string "citation", limit: 200, null: false
    t.string "nct_ids", limit: 40
    t.integer "rating"
    t.string "evidence_status", limit: 20, null: false
    t.integer "evidence_id", null: false
    t.integer "variant_id", null: false
    t.integer "gene_id", null: false
    t.string "chromosome", limit: 40
    t.integer "start_position"
    t.integer "stop_position"
    t.string "reference_bases", limit: 40
    t.string "variant_bases", limit: 40
    t.string "representative_transcript", limit: 40
    t.string "chromosome2", limit: 40
    t.integer "start_position2"
    t.integer "stop_position2"
    t.string "representative_transcript2", limit: 40
    t.integer "ensembl_version"
    t.string "reference_build", limit: 40, null: false
    t.string "variant_summary", limit: 2500, null: false
    t.string "variant_origin", limit: 200, null: false
    t.datetime "last_review_date", null: false
    t.string "evidence_civic_url", limit: 400, null: false
    t.string "variant_civic_url", limit: 100, null: false
    t.string "gene_civic_url", limit: 100, null: false
    t.string "drug_bank_name", limit: 100, null: false
    t.string "drug_bank_id", limit: 100, null: false
    t.string "icd_10_codes", limit: 40, null: false
  end

  create_table "dgidbs", force: :cascade do |t|
    t.string "gene_name", limit: 20, null: false
    t.string "gene_hgnc_id", limit: 40, null: false
    t.string "hgnc_complete_set_name", limit: 200
    t.string "ensembl_gene_id", limit: 40
    t.string "ref_seq_accession", limit: 40
    t.string "gene_claim_name", limit: 40
    t.integer "entrez_gene_id"
    t.string "interation_claim_source", limit: 100
    t.string "interation_types", limit: 50
    t.string "drug_claim_name", limit: 150
    t.string "drug_claim_primary_name", limit: 150
    t.string "drug_name", limit: 150
    t.string "drug_chembl_id", limit: 100
    t.string "pubmed_id", limit: 850
    t.string "drug_bank_id", limit: 150
    t.string "drug_bank_name", limit: 150
  end

  create_table "mycanergenome_helper_results", primary_key: ["id", "num_ref"], force: :cascade do |t|
    t.integer "id", null: false
    t.string "num_ref", limit: 10, null: false
  end

  create_table "mycanergenome_helpers", primary_key: "num_ref", id: :string, limit: 60, force: :cascade do |t|
    t.string "paper_name", limit: 250, null: false
    t.integer "pubmed_id", null: false
    t.string "web_address", limit: 150, null: false
  end

  create_table "mycanergenome_numbers", force: :cascade do |t|
  end

  create_table "mycanergenomes", force: :cascade do |t|
    t.string "biomarker", limit: 200, null: false
    t.string "patient_percent", limit: 40, null: false
    t.decimal "low_level", precision: 5, scale: 2
    t.decimal "high_level", precision: 5, scale: 2
    t.string "treatment_protein", limit: 100, null: false
    t.string "drugs", limit: 400, null: false
    t.string "orgin_cancer", limit: 100, null: false
    t.string "second_cancer", limit: 20, null: false
    t.string "data_original", limit: 20, null: false
    t.string "num_ref", limit: 60, null: false
  end

  create_table "oncokbs", force: :cascade do |t|
    t.string "isoform", limit: 20
    t.string "ref_seq", limit: 40
    t.integer "entrez_gene_id"
    t.string "gene_name", limit: 40, null: false
    t.string "alteration", limit: 40, null: false
    t.string "cancer_type", limit: 100, null: false
    t.string "level_type", limit: 10, null: false
    t.string "oncokb_drugs", limit: 200, null: false
    t.string "pmid", limit: 200, null: false
    t.string "abstracts_drugs", limit: 600, null: false
    t.string "drug_bank_name", limit: 200
    t.string "drug_bank_id", limit: 150
    t.string "icd_10_codes", limit: 40, null: false
  end

  create_table "pmkbs", id: false, force: :cascade do |t|
    t.string "gene_symbol", limit: 20, null: false
    t.string "gene_hgnc_id", limit: 40, null: false
    t.string "entrez_gene_id", limit: 40, null: false
    t.string "ref_seq_accession", limit: 40, null: false
    t.string "tumor_types", limit: 300
    t.string "tissue_types", limit: 40
    t.string "variants", limit: 300
    t.integer "tier", null: false
    t.string "intepretations", limit: 2500
  end

end
