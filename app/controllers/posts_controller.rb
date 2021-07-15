class PostsController < ApplicationController
  
  def index
    @posts = Post.all
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @new_post = Post.new
    @user = @post.user
  end
  
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
       redirect_to post_path(@post)
    else
       @posts = Post.all
       render :index
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
  @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
