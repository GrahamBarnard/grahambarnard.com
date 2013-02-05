class Blog < ActiveRecord::Base
  attr_accessible :post, :published, :title, :views
  validates_presence_of :post, :title
end
   