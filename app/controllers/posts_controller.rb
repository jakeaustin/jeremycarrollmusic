class PostsController < ApplicationController


  def default_serializer_options
    {root: false}
  end

  respond_to :json, :html

  def index
    @posts = Post.all
    respond_with @posts
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:notice] = "Post saved!"
      redirect_to :back
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def post_params
    params.require(:post).permit(:title, :content, :embed_code, :created_at)
  end

end
