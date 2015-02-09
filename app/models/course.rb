class Course < ActiveRecord::Base
  has_event_calendar
  belongs_to :classroom
  has_many :registrations
  has_many :users, through: :registrations
end
