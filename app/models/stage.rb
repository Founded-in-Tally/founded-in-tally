class Stage < ApplicationRecord
  validates :name, presence: true

  has_many :entity_stages
  has_many :entities, through: :entity_stages
end
