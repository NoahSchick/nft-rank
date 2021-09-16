class Token < ApplicationRecord
  belongs_to :project
  has_many :trait_values
end
