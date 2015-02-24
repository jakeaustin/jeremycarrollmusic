class HomeController < ApplicationController

  def index
    @musicPosts = Post.where("category = 'Music'").order(created_at: :desc)
    @lessonPosts = Post.where("category = 'Lesson'").order(created_at: :desc)
    @posts = {musicPosts: @musicPosts, lessonPosts: @lessonPosts}
  end

end
