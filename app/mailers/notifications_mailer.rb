class NotificationsMailer < ActionMailer::Base
  default :from => "darrenbydesign@gmail.com"
  default :to => "darrensorrels@darrensorrels.herokuapp.com"

  def new_message(message)
    @message = message
    mail(:subject => "[darrensorrels.herokuapp.com] #{message.subject}")
  end

end