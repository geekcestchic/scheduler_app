class Course < ActiveRecord::Base
  mount_uploader :image, CourseImageUploader

  has_event_calendar

  belongs_to :classroom
  has_many :registrations
  has_many :users, through: :registrations

  validates :name, presence: true, length: {minimum: 2, maximum: 50}, uniqueness: true
  validates :start_at, :end_at, :classroom, presence: true
  validate :validate_end_after_start
  # valide :validate_classroom_free

  def validate_end_after_start
    if end_at < start_at
      errors.add(:end_at, "Your end date must be after your start date") 
    end
  end

  def valide_classroom_free
    # self.all.each do |course|
    #   time_range = course.start_at..course.end_at
    #   if time_range.include? course.start_at || time_range.include? course.end_at
    #     if classroom == params[:id][:classroom]
    #       errors.add(:classroom, "Your classroom is busy during this time!") 
    #     end
    #   end
    # end
  end

end
