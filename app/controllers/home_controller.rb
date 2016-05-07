class HomeController < ApplicationController
  def index_h
     
  end
  def write_h
  end
  def read_h
     @title = params[:title]
     @content = params[:content]

     new_post = Post.new
     new_post.title = @title
     new_post.content = @content
     new_post.save
    
     redirect_to "/list_h"
  end
  def list_h
     @every_post = Post.all.order("id desc")
  end
  def destroy
     @one_post = Post.find(params[:post_id])
     @one_post.destroy
     redirect_to "/list_h"
  end
  def update_view_h
     @one_post = Post.find(params[:post_id]) 
  end
  def update
     @one_post = Post.find(params[:post_id])
     @one_post.title = params[:title]
     @one_post.content = params[:content]
     @one_post.save
     redirect_to "/list_h"
  end
end