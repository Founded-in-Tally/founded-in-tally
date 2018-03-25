class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      # inherits from Entity

      t.timestamps
    end
  end
end
