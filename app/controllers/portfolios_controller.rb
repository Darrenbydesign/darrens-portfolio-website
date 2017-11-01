class PortfoliosController < ApplicationController
  before_action :find_portfolio , only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @title = "Portfolio"
    @portfolios = Portfolio.all.order("created_at desc").paginate(page: params[:page], per_page: 4)
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new portfolio_params
    if @portfolio.save
      redirect_to @portfolio , notice: "Awesome work man! Your project is now saved!"
    else
      flash[:alert] = "Something went wrong adding your new image"
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @portfolio.update portfolio_params
      redirect_to @portfolio , notice: "Awesome work man! Your project is now updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @portfolio.destroy
    redirect_to portfolios_path
  end

  private

  def find_portfolio
    @portfolio = Portfolio.friendly.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :description, :image, :link, :medium, :industry, :services, :offerings, :slug)
  end

end
