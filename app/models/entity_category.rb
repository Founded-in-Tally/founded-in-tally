class EntityCategory < ApplicationRecord
  validates :entity, :category, presence: true
  
  belongs_to :entity
  belongs_to :category
end
