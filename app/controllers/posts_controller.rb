class PostsController < ApplicationController

  before_action do
      @posts = Post.all.order("created_at desc").page(params[:page])

      @current_user = User.find_by id: session[:user_id]
      if @current_user.nil?
        redirect_to login_path
      end
  end



  def dashboard
    @posts = Post.all.order("created_at desc").page(params[:page])
    @post = Post.new

  end

  def create
    @post = Post.new params.require(:post).permit(:title, :photo, :comment, :link)
    @post.user = @current_user
    @post.save
    @posts = Post.all.order("created_at desc").page(params[:page])

  end

  def photo_modal
    @post = Post.find params[:id]
    @posts = Post.all

  end

  def delete
    @post = Post.find params[:id]
    @post.delete
    redirect_to root_path
  end


end
