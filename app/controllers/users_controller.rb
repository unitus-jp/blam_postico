class UsersController < ApplicationController
  def list
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    User.create(username: params[:name], email: params[:email], password: params[:password])
  end
end
