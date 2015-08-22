class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.paginate(:page => params[:page], :per_page => 10)
  end
  
  def new
    @post = Post.new
  end

  def create
    @post =
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:notice] = "Post created!"
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def show 
  end

  def edit
     if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def update 
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end   
  end

  def destroy
    if @post.destroy
      redirect_to posts_path
    else
      redirect_to 'show'
    end
  end

  private 

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
