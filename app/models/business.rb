class Business < ApplicationRecord
  has_many :business_categories, inverse_of: :business, dependent: :destroy
  has_many :categories, through: :business_categories, inverse_of: :businesses

  validates :name, presence: true
end
