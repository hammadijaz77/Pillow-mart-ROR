class ContactController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def contact
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user = current_user # Associate the contact with the current user

    if @contact.save
      redirect_to root_path, notice: 'Message sent successfully!'
    else
      render :new, alert: 'There was an error sending your message.'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end
