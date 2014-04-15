class User < ActiveRecord::Base
  validates :username, presence: true
  validates :username, uniqueness: true

  validates :email, presence: true

  has_secure_password
end
