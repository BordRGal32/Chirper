class Chirp < ActiveRecord::Base
  validates :message, presence: true
  belongs_to :user

  def find_chirper
    names = message.scan(/(?<!\w)@(\w+)/)

    names.each do |name|
      user = User.find_by(username: name)
      if user
        send_chirpalert(user)
      end
    end
  end

  def send_chirpalert(user)
    ChirperMailer.chirpped(user).deliver
  end
end
