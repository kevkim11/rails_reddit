class PostsController < ApplicationController
  def index
    @posts = Subreddit.find(params[:subreddit_id]).posts
  end

  def show
    @post = Post.find(params[:id])
  end
end