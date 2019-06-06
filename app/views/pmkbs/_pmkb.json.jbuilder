json.extract! pmkb, :id, :gene_symbol, :gene_hgnc_id, :entrez_gene_id, :ref_seq_accession, :tumor_types, :tissue_types, :variants, :tier, :intepretations, :created_at, :updated_at
json.url pmkb_url(pmkb, format: :json)
