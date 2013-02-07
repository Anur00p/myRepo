class User < ActiveRecord::Base
  attr_accessible :user_name, :email, :roll, :age, :dept, :contact_no
  validates :user_name,:email, :presence => true
  validates :email,:uniqueness => true
  has_many :posts, :dependent => :destroy

  before_validation :ensure_name_has_a_value
 
  protected
  def ensure_name_has_a_value
    if user_name.nil?
      self.user_name = email unless email.blank?
    end
  end

before_create do |user|
    user.user_name = user.user_name.capitalize
  end
end
