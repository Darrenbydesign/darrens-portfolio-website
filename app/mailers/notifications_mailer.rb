class NotificationsMailer < ApplicationMailer
  default :from => "darrenbydesign@gmail.com"
  default :to => "darrenbydesign@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[darrensorrelsdesign.com] #{message.subject}")
  end

end