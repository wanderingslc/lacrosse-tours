class SignUpMailer < ActionMailer::Base
  

  default :from => "noreply@splitdodgetours.com"
  default :to => "splitdodgetours@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Split Dodge Tours : Sign Up #{message.subject}")
  end
end
