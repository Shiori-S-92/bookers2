class UsersController < ApplicationController
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def show
    @user = current_user
    @book = Book.new
    # @user = User.find(params[:id])
    # @books = @user.books.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id), notice: 'You have updated user successfully.'
  end

  private
  # ストロングパラメータ
  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
