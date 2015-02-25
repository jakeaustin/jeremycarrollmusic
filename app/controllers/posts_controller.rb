class PostsController < ApplicationController


  def default_serializer_options
    {root: false}
  end

  respond_to :json, :html

  def index
    @musicPosts = Post.where("category = 'Music'").order(created_at: :desc)
    @lessonPosts = Post.where("category = 'Lesson'").order(created_at: :desc)
    @posts = {musicPosts: @musicPosts, lessonPosts: @lessonPosts}
    respond_with @posts
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.content = @post.content.gsub(/\r\n/, '<br>')
    @post.embed_code = @post.embed_code.gsub(/width=\"560\"/, "width=\"100%\"").gsub(/height=\"450\"/, "height=\"315\"")

    if @post.save
      flash[:notice] = "Post saved!"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    # respond_with @post
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
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end


  private

  def post_params
    params.require(:post).permit(:title, :content, :embed_code, :category, :created_at, :all_tags)
  end

end
