json.extract! civic, :id, :gene_symbol_copy, :gene_symbol, :gene_hgnc_id, :ensembl_gene_id, :ref_seq_accession, :entrez_gene_id, :variants, :disease, :do_id, :phenotypes, :drugs, :evidence_type, :evidence_direction, :evidence_level, :clinical_significance, :evidence_statement, :pubmed_id, :citation, :nct_ids, :rating, :evidence_status, :evidence_id, :variant_id, :gene_id, :chromosome, :start_position, :stop_position, :reference_bases, :variant_bases, :representative_transcript, :chromosome2, :start_position2, :stop_position2, :representative_transcript2, :ensembl_version, :reference_build, :variant_summary, :variant_origin, :last_review_date, :evidence_civic_url, :variant_civic_url, :gene_civic_url, :drug_bank_name, :drug_bank_id, :icd_10_codes, :created_at, :updated_at
json.url civic_url(civic, format: :json)
