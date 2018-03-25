class CreateEntities < ActiveRecord::Migration[5.1]
  def change
    create_table :entities do |t|
      t.string :type
      t.string :name
      t.string :description
      t.string :url
      t.string :logo
      t.string :status

      t.string :address_street
      t.string :address_city
      t.string :address_state
      t.string :address_zip

      t.string :point_of_contact_name
      t.string :point_of_contact_email
      t.string :point_of_contact_phone

      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :linked_in

      t.timestamps
    end
  end
end
