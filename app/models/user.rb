class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true

  has_many :orders

  has_secure_password
end
