class PostsController < ApplicationController
  def index 
    @post = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end 

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_params
    end  
  end  

  def show
    @post = Post.find(params[:id])
  end    

  def edit 
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update
      redirect_to post_params
    else
      render :new  
    end
  end

  private
  def post_params
    params.require(:post).permit(:title,:content)
  end
end
