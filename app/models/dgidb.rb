class Dgidb < ApplicationRecord
  belongs_to :gene_hgnc
  belongs_to :ensembl_gene
  belongs_to :entrez_gene
  belongs_to :drug_chembl
  belongs_to :pubmed
  belongs_to :drug_bank
end
