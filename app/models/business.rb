class Business < ApplicationRecord
  has_many :business_categories, inverse_of: :business, dependent: :destroy
  has_many :categories, through: :business_categories, inverse_of: :businesses

  validates :name, presence: true

  def full_address
    @full_address ||= [address_1, address_2].join(', ')
  end

  def city_state_zip
    @city_state_zip ||= [city, state, zip].join(', ')
  end
end
