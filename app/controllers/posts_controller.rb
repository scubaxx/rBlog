class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	@post = Post.all
  	@categories = Category.all
  end

  def show
  end
end
