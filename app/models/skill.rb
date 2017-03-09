class Skill < ActiveRecord::Base
  # validation
  validates_presence_of :name, :age
end
