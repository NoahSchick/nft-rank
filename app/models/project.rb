class Project < ApplicationRecord
  has_many :tokens
  has_many :trait_options
  has_many :trait_types
end
