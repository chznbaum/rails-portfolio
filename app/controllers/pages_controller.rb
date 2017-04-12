class PagesController < ApplicationController
  def home
    @posts = Blog.limit(3)
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end
