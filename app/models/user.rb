class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :enrolments
  has_many :courses, through: :enrolments

  def admin?
    self.role == 'admin'
  end

  def instructor?
    self.role == 'instructor'
  end

  def student?
    self.role == 'student'
  end

  validates :email, presence: true
  validates :email, :email => true
  validates :password, presence: true
end
