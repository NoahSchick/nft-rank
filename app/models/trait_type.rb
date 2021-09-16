class TraitType < ApplicationRecord
  belongs_to :project
  has_many :trait_options
end
