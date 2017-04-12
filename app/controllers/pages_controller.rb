class PagesController < ApplicationController
  def home
    @posts = Blog.limit(3)
  end

  def about
  end

  def contact
  end
end
