class CreateEntityStages < ActiveRecord::Migration[5.1]
  def change
    create_table :entity_stages do |t|
      t.references :entity, foreign_key: true
      t.references :stage,  foreign_key: true

      t.timestamps
    end
  end
end
