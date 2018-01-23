class Api::V1::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      # binding.pry
      render json: {user: UserSerializer.new(@user), token: @user.token}
    else
      render json: {error: @user.errors}, status: 400
    end
  end


  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
