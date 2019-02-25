class Location < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_and_belongs_to_many :shared_users, class_name: "User", foreign_key: "location_id"
end
