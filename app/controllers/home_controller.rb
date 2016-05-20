class HomeController < ApplicationController
  def index
    @posts = Post.all
    
  end
  def write
    post=Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.my_image = params[:image_file]
    post.save
    
    redirect_to "/home/index"
  end
  
  def reply_write
    reply=Reply.new
    reply.content = params[:content]
    reply.post_id = params[:id_of_post]
    reply.save
    
    redirect_to "/home/index"
  end
  
  #def upload
    #file = params[:my_image]
    
    #uploader = PoohUploader.new
    #uploader.store!(file)
    
    #redirect_to "/home/index"
  #end
  
end
