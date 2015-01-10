class Post < ActiveRecord::Base
	validates_presence_of :title, :content
	
  has_ancestry

  belongs_to :user

end
