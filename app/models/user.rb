class User < ApplicationRecord
  validates :username, :password, :email, presence: true
  validates_length_of :password, minimum: 8
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
