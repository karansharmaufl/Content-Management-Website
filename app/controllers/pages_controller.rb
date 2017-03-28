class PagesController < ApplicationController
  layout 'admin'

  def index
    @pages = Page.all
  end

  def show 
    @page =Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice]="Page Created Successfully."
      redirect_to(pages_path)
    else
      render('new')
  end
  end

  def edit
  end

  def delete
  end

  def page_params
    params.require(:page).permit(:subject_id,:name,:permalink,:position,:visible)
  end

end
