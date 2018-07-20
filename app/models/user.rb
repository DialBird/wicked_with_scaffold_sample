class User < ApplicationRecord
  validates :email,                 presence: true
  validates :password,              presence: true
  validates :password_confirmation, presence: true
  validates :zip,                   presence: true
  validates :address1,              presence: true
  validates :address2,              presence: true
end
