class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    render layout: 'left'
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      UserMailer.contact_email(@contact).deliver
      UserMailer.contact_admin_email(@contact).deliver
      redirect_to root_url, notice: "Message sent! Thank you for contacting us."
    else
      render "new", layout: 'left'
    end
  end
end