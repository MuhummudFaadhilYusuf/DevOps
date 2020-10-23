class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates_presence_of :address1, :address2, :city, :postcode
end
