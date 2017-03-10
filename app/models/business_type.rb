class BusinessType < ApplicationRecord
  has_many :businesses, inverse_of: :business_type, dependent: :destroy

  validates :name, presence: true

end
