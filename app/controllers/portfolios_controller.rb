class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end
  def new
    @portfolio_item = Portfolio.new
  end
  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item has been created.' }
      else
        format.html { render :new }
      end
    end
  end
end
