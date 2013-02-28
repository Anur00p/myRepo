class User < ActiveRecord::Base
 
has_many :microposts,:dependent => :destroy
attr_accessible :name, :email
#validates :email, :presence => true
# validates :email,:uniqueness => true
#validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]+\z/i
#before_create do |user|
#user.user_name = user.user_name.capitalize
#end
#before_update do |user|
#user.user_name = user.user_name.capitalize
#end

end

