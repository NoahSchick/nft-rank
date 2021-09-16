class Project < ApplicationRecord
  has_many :items
  has_many :trait_options
  has_many :trait_types
end
