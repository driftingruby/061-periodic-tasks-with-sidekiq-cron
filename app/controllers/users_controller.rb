class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create_random
    GenerateRandomUserJob.perform_later
    redirect_to root_path
  end

  def destroy_all
    User.all.destroy_all
    redirect_to root_path
  end
end
