class PagesController < ApplicationController

  def index
    @pages = Page.order('position ASC')
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    # Instantiate a new object using form parameters
    @page = Page.new(page_params)
    # Save the object
    if @page.save
      # If save succeeds, redirect to the index action
      redirect_to(pages_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(page_params)
      redirect_to(page_path(@page))
    else
      render('edit')
    end
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to(pages_path)
  end

  private

    def page_params
      params.require(:page).permit(
        :name,
        :visible,
        :position,
        :permalink,
        :content,
        :subject_id
      )
    end

end
