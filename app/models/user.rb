class User < ApplicationRecord
  validates :email,                 presence: true
  validates :password,              presence: true, if: :password_confirmation_or_more?
  validates :password_confirmation, presence: true, if: :password_confirmation_or_more?
  validates :zip,                   presence: true, if: :set_address_or_more?
  validates :address1,              presence: true, if: :set_address_or_more?

  private

  def password_confirmation_or_more?
    return false if status.nil?
    1 <= status
  end

  def set_address_or_more?
    return false if status.nil?
    2 <= status
  end
end
