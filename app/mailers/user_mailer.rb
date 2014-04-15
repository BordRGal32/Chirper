class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    @url = "http://google.com"
    mail(to: @user.email,
         subject: "Chirp it up")
  end
end
