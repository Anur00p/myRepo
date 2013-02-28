class MicropostsController < ApplicationController

def index
  @microposts=Micropost.all
 end

 def new
  @micropost=Micropost.new
 end

def create
  @micropost=Micropost.create(params[:micropost])

 redirect_to micropost_path(@micropost)
end  

 def show
  @micropost=Micropost.find(params[:id])
 end

 def edit
  @micropost=Micropost.find(params[:id])
 end

 def update
  micropost=Micropost.find(params[:id])
  micropost.update_attributes(params[:micropost])
  micropost.save!
  redirect_to micropost_path
 end
def destroy
 micropost=Micropost.find(params[:id])
 micropost.destroy
 redirect_to microposts_path
end
 

end
