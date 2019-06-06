json.extract! dgidb, :id, :gene_name, :gene_hgnc_id, :hgnc_complete_set_name, :ensembl_gene_id, :ref_seq_accession, :gene_claim_name, :entrez_gene_id, :interation_claim_source, :interation_types, :drug_claim_name, :drug_claim_primary_name, :drug_name, :drug_chembl_id, :pubmed_id, :drug_bank_id, :drug_bank_name, :created_at, :updated_at
json.url dgidb_url(dgidb, format: :json)
