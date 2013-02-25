class Skill < ActiveRecord::Base
  belongs_to :skilltype
  attr_accessible :name, :skilltype_id, :rating
end
