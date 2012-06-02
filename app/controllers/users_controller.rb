class UsersController < ApplicationController
  before_filter :authenticate_user!
  def show
    @user = User.find(session["warden.user.user.key"][1][0])
  end
  def index
    @users = User.all
  end
end
