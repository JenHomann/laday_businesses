class CreateBusinessTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :business_types do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
