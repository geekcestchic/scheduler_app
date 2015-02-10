class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :registrations
  has_many :courses, through: :registrations

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
  validates :my_email_attribute, :email => true
  validates :password, presence: true
end
