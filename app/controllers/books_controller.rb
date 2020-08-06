class BooksController < ApplicationController
  before_action :set_book, except: [:index, :new, :create]  

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def show # /books/:id
    
  end

  def edit # /books/:id/edit

  end
  
  def update # patch /books/:id
    if @book.update(book_params)
      redirect_to book_path(@book) # /books/5
    else
      render :edit
    end
  end

  def destroy # delete /books/:id
    @book.destroy
    redirect_to books_path
  end

  private

    def set_book
      @book = Book.find_by_id(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author_id, :genre_id, :pages, :rating, author_attributes: [:name], genre_attributes: [:name])
    end
end
