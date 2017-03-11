class BusinessCategory < ApplicationRecord
  belongs_to :business, inverse_of: :business_categories
  belongs_to :category, inverse_of: :business_categories

  validates :business, :category, presence: true
end
