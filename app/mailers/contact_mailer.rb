class ContactMailer < ApplicationMailer

  default from: 'josh_edney1@hotmail.com'

  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(to: 'josh_edney1@hotmail.com', subject: 'New message from website') do |format|
      format.html { render 'send_contact_email' }
      format.text { render 'send_contact_email' }
    end
  end

end
