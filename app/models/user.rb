class User < ActiveRecord::Base
  # model association
  has_many :skills

  validates_presence_of :username, :password
end
