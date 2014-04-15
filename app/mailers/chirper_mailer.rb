class ChirperMailer < ActionMailer::Base
  default from: "from@example.com"

  def chirpped(user)
    @user = user
    mail(to: @user.email, subject: "You Got CHIRPPED!")
  end
end
