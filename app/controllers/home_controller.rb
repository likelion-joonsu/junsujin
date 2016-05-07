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
<<<<<<< HEAD
     
     redirect_to "/read_h/#{new_post.id}"
=======
    
     redirect_to "/list_h"
>>>>>>> 05af6c4f8511a28d2e572680b235d7629e5947d8
  end
  def read_h
    @one_post = Post.find(params[:post_id])
  end
<<<<<<< HEAD

  def destroy_h
    one_post = Post.find(params[:post_id])
    one_post.destroy
    redirect_to :back
=======
  def destroy
     @one_post = Post.find(params[:post_id])
     @one_post.destroy
     redirect_to "/list_h"
>>>>>>> 05af6c4f8511a28d2e572680b235d7629e5947d8
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