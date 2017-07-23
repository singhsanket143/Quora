class QuestionMailer < ApplicationMailer
  default from: 'helpermail41@gmail.com'

  def notify_email(user)
    @user=user
    mail(to: @user.email,subject: 'Question has been asked!!')

end
end
