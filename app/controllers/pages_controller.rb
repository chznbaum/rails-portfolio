class PagesController < ApplicationController
  def home
    @posts = Blog.limit(3)
    @skills = Skill.all
  end

  def about
    @page_title = "About Chazona"
  end

  def contact
    @page_title = "Contact"
  end
end
