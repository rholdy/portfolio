class OmniauthCallbacksController < Devise::OmniauthCallbacksController
	
	def google_oauth2
    # You need to implement the method below in your model (e.g. app/models/user.rb)
     @author = Author.find_for_google_oauth2(request.env["omniauth.auth"], current_author)

    if @author.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
      sign_in_and_redirect @author, :event => :authentication
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
      redirect_to new_author_registration_url
    end
	end
	
end