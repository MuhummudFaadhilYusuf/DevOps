class UserProfile < ApplicationRecord
  belongs_to :user, optional: true
  validates_presence_of :age, :location, :mobile_number, :user_tag
end
