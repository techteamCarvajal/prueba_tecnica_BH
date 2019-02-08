class ContactsController < ApplicationController
  def new
    @title = "Eulearn- Contacto"
    @description = "Contáctanos para obtener más información sobre las servicios educativos que ofrecemos"
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
      if @contact.deliver
        redirect_to root_path, notice: "Se ha enviado tu mensaje a Eulearn exitosamente"
      else
        flash.now[:error] = "No se pudo enviar tu mensaje a Eulearn, por favor inténtalo más tarde"
        render :new
      end
  end
end