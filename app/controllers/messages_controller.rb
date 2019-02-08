class MessagesController < ApplicationController
	def new 
		@message = Message.new
	end

	def create
		@message = Message.new message_params
	if @message.valid?
		MessageMailer.contact_me(@message).deliver_now
		redirect_to new_message_url
		flash[:notice] = "Hemos recibido un mensaje, dentro de poco nos comunicaremos contigo"
		else
		flash[:notice] = "El mensaje no pudo ser enviado, por favor intenta de nuevo y llena todos los campos"
		render :new
		end
	end

	def message_params
		params.require(:message).permit(:name, :email, :phone_number, :body)
	end
end
