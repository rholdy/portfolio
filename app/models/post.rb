class Post < ActiveRecord::Base

  has_many :pictures, as: :pictured
  accepts_nested_attributes_for :pictures
  attr_accessible :Author, :body, :title, :image, :picture, :description, :pictures_attributes
  

end
