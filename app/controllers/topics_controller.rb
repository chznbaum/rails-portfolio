class TopicsController < ApplicationController
  layout "blog"
  access all: [:show, :index]

  def index
  end

  def show
    @topic = Topic.find(params[:id])
    @blogs = @topic.blogs.by_recent.page(params[:page]).per(5)
    @page_title = "Blogs Filed Under #{@topic.title}"
  end
end