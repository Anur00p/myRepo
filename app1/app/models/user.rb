class User < ActiveRecord::Base
  attr_accessible :user_name, :email, :roll, :age, :dept, :contact_no
  validates :user_name,:email, :presence => true
  validates :email,:uniqueness => true
  has_many :posts, :dependent => :destroy


before_create do |user|
    user.user_name = user.user_name.capitalize
  end
end
