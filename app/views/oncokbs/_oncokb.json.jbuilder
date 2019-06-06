json.extract! oncokb, :id, :isoform, :ref_seq, :entrez_gene_id, :gene_name, :alteration, :cancer_type, :level_type, :oncokb_drugs, :pmid, :abstracts_drugs, :drug_bank_name, :drug_bank_id, :icd_10_codes, :created_at, :updated_at
json.url oncokb_url(oncokb, format: :json)
