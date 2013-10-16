class Post < ActiveRecord::Base
  attr_accessible :Author, :body, :title
end
