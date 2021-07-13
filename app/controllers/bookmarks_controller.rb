class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params) 
    @list = List.find(params[:list_id])
    @bookmark.list = @list

    # How the above syntax works?
    # DIFF taks_params & params[:bookmark]
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:book_id, :comment)
  end

end
