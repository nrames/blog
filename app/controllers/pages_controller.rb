class PagesController < ApplicationController
  def index
    # All Blog Pages
    @pages = Page.all
  end

  def show
    # Finding a page by id from the db and giving the view access
    @page = Page.find(params[:id])
  end

  def edit
    # Shows a pre-filled form to edit the page
  end

  def update
    # Take data from the form and update the page in our database
  end

  def new
    # Shows a blank form to create a new page
    @page = Page.new
  end

  def create
    # Take data from the form and create a new page in our database
    @page = Page.new(title: params[:page][:title],
                      author: params[:page][:author],
                      content: params[:page][:content],
                      public: params[:page][:public])
    if @page.save
      # success
      redirect_to pages_path
    else
      # fail
      render :new
    end
  end

  def destroy
    # Finds the page by ID and removes it from the database
  end
end