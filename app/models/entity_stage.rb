class EntityStage < ApplicationRecord
  validates :entity, :stage, presence: true

  belongs_to :entity
  belongs_to :stage
end
