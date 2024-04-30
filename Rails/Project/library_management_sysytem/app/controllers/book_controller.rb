class BookController < ApplicationController
  def index
    @books = Book.order('position ASC')
  end

  def show
    @book=Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    # Instantiate a new object using form parameters
    @book = Book.new(book_params)

    # Save the object
    if @book.save
      redirect_to(books_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    @book=Book.find(params[:id])
    if @book.update(book_params)
      redirect_to(book_path(@book))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  def delete
    @book=Book.find(params[:id])
  end

  def destroy
    @book=Book.find(params[:id])
    @book.destroy
    redirect_to(books_path)
  end

  private
    def book_params
      params.require(:book).permit(:title,:author,:publication_year,:genre)
    end
end
