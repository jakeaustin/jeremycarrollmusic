class PostsController < ApplicationController


  def default_serializer_options
    {root: false}
  end

  respond_to :json, :html

  def index
    @musicPosts = Post.where("category = 'Music'")
    @lessonPosts = Post.where("category = 'Lesson'")
    @posts = {musicPosts: @musicPosts, lessonPosts: @lessonPosts}
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

  def show
    @post = Post.find(params[:id])
    respond_with @post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path, notice: "You have updated the post #{@post.title}"
    end
  end

  def destroy
  end


  private

  def post_params
    params.require(:post).permit(:title, :content, :embed_code, :category, :created_at)
  end

end
