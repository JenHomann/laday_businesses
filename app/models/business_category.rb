class BusinessCategory < ApplicationRecord
  belongs_to :business, inverse_of: :business_categories, dependent: :destroy
  belongs_to :category, inverse_of: :business_categories, dependent: :destroy

  validates :business, :category, presence: true
end
