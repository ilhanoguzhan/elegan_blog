class WelcomeController < ApplicationController
  def index
    @posts = Post.limit(6)
    render noting: true
  end
end
