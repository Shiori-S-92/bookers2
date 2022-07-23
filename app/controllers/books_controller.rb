class BooksController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end

  def index
    @books = Book.page(params[:page])
  end

  def show
  end

  def edit
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:book).permit(:title, :body)
  end

end
