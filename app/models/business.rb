class Business < ApplicationRecord
  belongs_to :business_type, inverse_of: :businesses

  validates :name, :business_type, presence: true
end
