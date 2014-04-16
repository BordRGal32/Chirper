class User < ActiveRecord::Base
  validates :username, presence: true
  validates :username, uniqueness: true
  has_many :chirps
  has_many :followers

  validates :email, presence: true
  after_create :send_welcome_message

  has_secure_password

  def send_welcome_message
    UserMailer.welcome_email(self)
  end

end
