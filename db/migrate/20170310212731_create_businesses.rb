class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :name, null: false
      t.string :description
      t.references :business_type, foreign_key: true, null: false
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :contact_name
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
