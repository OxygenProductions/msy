class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    render layout: 'left'
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      # TODO send contact here
      redirect_to root_url, notice: "Message sent! Thank you for contacting us."
    else
      render "new", layout: 'left'
    end
  end
end