class PostsController < ApplicationController

def new
@post=Post.new
end

def create
user=User.find(params[:id])
post=user.post.create(params[:post])
redirect_to user_path(user)
end

end
