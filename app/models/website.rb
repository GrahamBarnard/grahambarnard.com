class Website < ActiveRecord::Base
  has_many :webimages
  attr_accessible :description, :name, :url
end

