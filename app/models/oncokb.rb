class Oncokb < ApplicationRecord
  belongs_to :entrez_gene
  belongs_to :drug_bank
end
