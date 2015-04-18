class ContactController < ApplicationController
	def new
		@message = Message.new
	end
	def create
		@message = Message.new(params[:message])
		@message.request = request
		if @message.deliver
			flash[:notice] = "Thanks for your message. We will contact you shortly!"
		else
			flash.now[:notice] = "Whoops looks like there was a problem sending the message."
			render :new
		end
		if @message.valid?
			NotificationsMailer.new_message(@message).deliver
			flash[:notice] = "Thanks, your message was successfully sent. We will be reaching out to you soon!"
			redirect_to(contact_path)
		else
			flash.alert = "Oops,looks like there was an error. In some of the fields. 
			Please check the fields below and try again"
			render :new
		end
	end
	def contact
		@title = "Contact"
	end
	
end