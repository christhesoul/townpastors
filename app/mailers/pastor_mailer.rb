class PastorMailer < ActionMailer::Base
  default from: "app@townpastorslowestoft.org.uk"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.pastor_mailer.signup_confirmation.subject
  #
  def signup_confirmation(pastor)
    @pastor = pastor
    mail to: pastor.email, subject: "Welcome to Town Pastors"
  end
end
