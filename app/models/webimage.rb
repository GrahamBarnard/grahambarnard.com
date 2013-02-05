class Webimage < ActiveRecord::Base
  belongs_to :website
  attr_accessible :caption, :imageorder, :title, :url, :website_id
end
