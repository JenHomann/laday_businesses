class RemoveBusinessTypeFromBusinesses < ActiveRecord::Migration[5.0]
  def change
    remove_column :businesses, :business_type_id, :integer
  end
end
