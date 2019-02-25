class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_uniqueness_of :username
  has_many :locations
  has_and_belongs_to_many :shared_locations, class_name: "Location", foreign_key: "user_id"
end
