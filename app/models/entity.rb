class Entity < ApplicationRecord
  validates :name, presence: true
  validates :status, presence: true, inclusion: { in: %w(pending approved denied) }

  has_many :entity_categories
  has_many :categories, through: :entity_categories
  has_many :entity_stages
  has_many :stages, through: :entity_stages
end
