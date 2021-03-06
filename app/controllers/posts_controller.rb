class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end


  def new
    @post = Post.new
  end



  def create
   @post = Post.newe(post.params)
     if @post.save
       redirect_to posts_path
     else
       render :new
     end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post.params)
      redirect_to posts_path
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
      redirect_to posts_path
  end
  
  private

  def post_params
    params.require(:post).permit(:title, :author, :description)
  end

end
