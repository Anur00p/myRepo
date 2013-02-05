class User < ActiveRecord::Base
  attr_accessible :name, :email, :roll, :age, :dept, :contact_no
  validates :name,:email, :presence => true
  validates :email,:uniqueness => true
  has_many :posts


before_create do |user|
    user.name = user.name.capitalize
  end
end
