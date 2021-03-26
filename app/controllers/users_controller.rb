class UsersController < ApplicationController

  skip_before_action :authenticate, only: :create

  def index
    @users = User.all
    render json: { users: @users, user: @user }

    # @post = Post.create(
    #   user_id: @user.id,
    #   content: params[:content]
    # )
  end

  def create
    @user = User.create(
      username: params[:username],
      password: params[:password]
    )

    render json: @user
  end

  def profile
    render json: {
      username: @user.username,
      posts: @user.posts,
      dogs: @user.dogs
    }
  end

end
