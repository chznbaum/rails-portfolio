class PortfoliosController < ApplicationController

  def index
    # Pass Portfolios to the view
    @portfolio_items = Portfolio.all
  end

  def ruby_on_rails
    @ruby_on_rails_portfolio_items = Portfolio.ruby_on_rails
  end

  def vue
    @vue_portfolio_items = Portfolio.vue
  end

  def show
    # Look up portfolio item
    @portfolio_item = Portfolio.find(params[:id])
  end

  def new
    # Create a new Portfolio instance
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def edit
    # Look up portfolio item
    @portfolio_item = Portfolio.find(params[:id])
  end

  def create
    # Validate new Portfolio
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image, technologies_attributes: [:name]))
    # What happens next
    respond_to do |format|
      # If successfully created
      if @portfolio_item.save
        # Redirect to portfolios index
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item has been created.' }
      else
        # Stay on new page for correction
        format.html { render :new }
      end
    end
  end
  
  def update
    # Look up portfolio item
    @portfolio_item = Portfolio.find(params[:id])
    # What happens next
    respond_to do |format|
      # Validate changes
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image, technologies_attributes: [:name]))
        # Redirect to portfolios index
        format.html { redirect_to portfolios_path, notice: 'The portfolio item has been updated.' }
      else
        # Stay on edit page for correction
        format.html { render :edit }
      end
    end
  end

  def destroy
    # Look up portfolio item
    @portfolio_item = Portfolio.find(params[:id])
    # Destroy/Delete it
    @portfolio_item.destroy
    # What happens next
    respond_to do |format|
      # Redirect to portfolios index
      format.html { redirect_to portfolios_url, notice: 'The portfolio item has been deleted.' }
    end
  end

end
