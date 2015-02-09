class Classroom < ActiveRecord::Base
  has_many :users
  has_many :courses
end
