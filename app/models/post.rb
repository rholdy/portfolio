class Post < ActiveRecord::Base

  has_many :pictures, as: :pictured
  attr_accessible :Author, :body, :title, :image, :picture, :description
  

end
