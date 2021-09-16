class TraitOption < ApplicationRecord
  belongs_to :project
  belongs_to :trait_type
end
