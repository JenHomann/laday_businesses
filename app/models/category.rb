class Category < ApplicationRecord
  has_many :business_categories, inverse_of: :category, dependent: :destroy
  has_many :businesses, through: :business_categories, inverse_of: :categories

  validates :name, presence: true

end
