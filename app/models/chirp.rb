class Chirp < ActiveRecord::Base
  validates :message, presence: true
  belongs_to :user


end
