class Category < ApplicationRecord
  validates :name, presence: true

  has_many :entity_categories
  has_many :entities, through: :entity_categories
end
