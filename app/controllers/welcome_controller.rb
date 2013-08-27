class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @posts = Post.limit(6)
  end
end
