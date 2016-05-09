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
  def comment_create
    @reply = Reply.new(post_id: params[:post_id], content: params[:content])
    @reply.save
    redirect_to :back
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
  
  def index_s
  end
  def write_view_s
    
      new_writing = Writing.new
     new_writing.subject = params[:subject]
     new_writing.stuff = params[:stuff]
     new_writing.img_file = params[:img_file]
     new_writing.save
     
  end
  def write_s
     new_writing = Writing.new
     new_writing.subject = params[:subject]
     new_writing.stuff = params[:stuff]
     new_writing.img_file = params[:img_file]
     new_writing.save
     
  end
  def read_s
    @one_writing = Writing.find(params[:post_num])
  end

  def destroy_s
    one_writing = Writing.find(params[:post_num])
    one_writing.destroy
    one_writing.save   
    redirect_to "/home/index_s"
  end
  def update_view_s
     @one_writing = Writing.find(params[:post_num]) 
  end
  def update_s
     @one_writing = Writing.find(params[:post_num])
     @one_writing.subject = params[:subject]
     @one_writing.stuff = params[:stuff]
     @one_writing.save
     redirect_to "/read_s/#{@one_writing.id}"
  end
end