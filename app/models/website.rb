class Website < ActiveRecord::Base
  has_many :webimages
  attr_accessible :description, :shortdescription, :name, :imageurl, :previewimageurl, :url, :published
end

