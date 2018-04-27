class PagesController < ApplicationController
  def index
    @title = "Projects"
    @pages = Page.all.order("created_at desc")
  end
  
  def show
  end
  private

  def find_page
    @page = page.friendly.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:title,:body,:is_published)
  end

end
