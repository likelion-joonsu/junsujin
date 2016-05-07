class HomeController < ApplicationController
  def index_h
     @every_post = Post.all.order("id desc")
  end
  def write_view_h
  end
  def write_h
     new_post = Post.new
     new_post.title = params[:title]
     new_post.content = params[:content]
     new_post.img_file = params[:img_file]
     new_post.save
     
     redirect_to "/read_h/#{new_post.id}"
  end
  def read_h
    @one_post = Post.find(params[:post_id])
  end

  def destroy_h
    one_post = Post.find(params[:post_id])
    one_post.destroy
    one_post.save   
    redirect_to "/home/index"
  end
  def update_view_h
     @one_post = Post.find(params[:post_id]) 
  end
  def update_h
     @one_post = Post.find(params[:post_id])
     @one_post.title = params[:title]
     @one_post.content = params[:content]
     @one_post.save
     redirect_to "/read_h/#{@one_post.id}"
  end
end