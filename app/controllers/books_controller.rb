class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    # DIFF taks_params & params[:book]
    if @book.save
    # Will raise ActiveModel::ForbiddenAttributesError
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :overview, :book_url, :rating)
  end

end
