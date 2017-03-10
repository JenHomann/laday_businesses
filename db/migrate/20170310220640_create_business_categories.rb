class CreateBusinessCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :business_categories do |t|
      t.references :business, foreign_key: true, null: false
      t.references :category, foreign_key: true, null: false

      t.timestamps
    end
  end
end
