module BlogsHelper
  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", class: 'img-fluid'
  end

  def blog_status_color blog
    'color: #d9534f;' if blog.draft?
  end
end
