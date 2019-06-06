class Pmkb < ApplicationRecord
  validates :entrez_gene_id,uniqueness: { case_sensitive: false }
  belongs_to :gene_hgnc
  belongs_to :entrez_gene
end
