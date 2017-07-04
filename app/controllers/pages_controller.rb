class PagesController < ApplicationController
  def home
    @posts = Blog.limit(3)
    @skills = Skill.all
  end

  def about
    @page_title = "About Chazona"
    @skills = Skill.order(title: :asc)
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end

  def resume
  end
end
