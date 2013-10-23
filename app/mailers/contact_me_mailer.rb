class ContactMeMailer < ActionMailer::Base
  layout 'email'

  def contact_me(message)
    @contact_me = message
    mail( to: "rholdy@gmail.com", from: @contact_me.email, subject: @contact_me.subject )
  end

end
