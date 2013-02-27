class Employment < ActiveRecord::Base
  attr_accessible :description, :finish_date, :position, :start_date, :website, :published
end
