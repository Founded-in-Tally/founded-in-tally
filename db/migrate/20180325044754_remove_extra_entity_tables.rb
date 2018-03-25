class RemoveExtraEntityTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :companies
    drop_table :contributors
    drop_table :events

    add_column :entities, :founded_year, :date
    add_column :entities, :employee_count, :integer
    add_column :entities, :raised_money, :boolean
  end
end
