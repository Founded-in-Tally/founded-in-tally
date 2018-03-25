class CreateContributors < ActiveRecord::Migration[5.1]
  def change
    create_table :contributors do |t|
      # inherits from Entity

      t.timestamps
    end
  end
end
