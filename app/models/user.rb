class User < ApplicationRecord
  has_secure_password
  has_many :posts

  validates :username, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
