class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit, :update, :destroy, :toggle_status]
  layout "blog"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :toggle_status]}, site_admin: :all

  def index
    @blogs = Blog.protect_drafts(current_user).by_recent.page(params[:page]).per(5)
    @page_title = "Blog"
  end

  def show
    @blog = Blog.includes(:comments).friendly.find(params[:id])
    @comment = Comment.new
    @page_title = @blog.title
    @seo_keywords = @blog.body
  end

  def new
    @blog = Blog.new
    @page_title = "Create a New Post"
  end

  def edit
    @page_title = "Editing \"" + @blog.title + "\""
  end

  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Your post has been created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'The post has been updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'The post has been deleted.' }
    end
  end

  def toggle_status
    if @blog.draft?
      @blog.published!
    elsif @blog.published?
      @blog.draft!
    end
    redirect_to blogs_url, notice: 'Post status has been updated.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :body, :topic_id, :status)
    end
end
