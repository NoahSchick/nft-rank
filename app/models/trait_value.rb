class TraitValue < ApplicationRecord
  belongs_to :trait_option
  belongs_to :item
end
