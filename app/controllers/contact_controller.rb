class ContactController < ApplicationController
	def new
		@message = Message.new
	end
	def create
		@message = Message.new(params[:message])

		if @message.valid?
			NotificationsMailer.new_message(@message).deliver
			flash[:notice] = "Thank you, Your message was successfully sent."
			redirect_to(contact_path)
		else
			flash.alert = "Oops,looks like there was an error. In some of the fields. 
			Please check the fields below and try again"
			render :new
		end
	end
	def contact
		@title = "contact"
	end
	
end