class PortfoliosController < ApplicationController
  layout 'portfolio'
  access all: [:show, :index, :ruby_on_rails, :vue], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    # Pass Portfolios to the view
    @portfolio_items = Portfolio.by_position
    @page_title = "Portfolio"
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end
    render nothing: true
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
    @page_title = @portfolio_item.title
  end

  def new
    # Create a new Portfolio instance
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
    @page_title = "Create a New Portfolio Item"
  end

  def edit
    # Look up portfolio item
    @portfolio_item = Portfolio.find(params[:id])
    @page_title = "Editing \"" + @portfolio_item.title + "\""
  end

  def create
    # Validate new Portfolio
    @portfolio_item = Portfolio.new(portfolio_params)
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
      if @portfolio_item.update(portfolio_params)
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

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      :main_image,
                                      :thumb_image,
                                      technologies_attributes: [:name]
                                      )
  end
end
