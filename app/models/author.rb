class Author < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, :omniauth_providers => [:google_oauth2]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

	  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
	    data = access_token.info
	    author = Author.where(:email => data["email"]).first

	    unless author
	        author = Author.create(name: data["name"],
		    		   email: data["email"],
		    		   password: Devise.friendly_token[0,20]
		    		  )
	    end
	    author
	  end
  
end
