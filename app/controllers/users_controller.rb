class UsersController < ApplicationController
  def index
    # @user = User.find(params[:id])
  end

  def show
    # @user = User.find(params[:id])
    # @books = @user.books.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to books_path
  end

  private
  # ストロングパラメータ
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
