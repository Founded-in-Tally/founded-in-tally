class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      # inherits from Entity
      t.date    :founded_year
      t.integer :employee_count
      t.boolean :raised_money

      t.timestamps
    end
  end
end
