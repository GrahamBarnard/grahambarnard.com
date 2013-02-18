class Skilltype < ActiveRecord::Base
  has_many :skills
  attr_accessible :name
end
