class Civic < ApplicationRecord
  belongs_to :gene_hgnc
  belongs_to :ensembl_gene
  belongs_to :entrez_gene
  belongs_to :do
  belongs_to :pubmed
  belongs_to :evidence
  belongs_to :variant
  belongs_to :gene
  belongs_to :drug_bank
end
