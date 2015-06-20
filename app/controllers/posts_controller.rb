class PostsController < ApplicationController

  before_action do
      @posts = Post.all.order("created_at desc")
  end



  def dashboard
    @post = Post.new

  end

  def create
    @post = Post.new params.require(:post).permit(:title, :photo, :comment)
    @post.save
    @posts = Post.all
  end

  def photo_modal
    @post = Post.find params[:id]
  end


end
