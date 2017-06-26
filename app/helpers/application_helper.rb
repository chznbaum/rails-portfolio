module ApplicationHelper

  def login_helper style, tag_type
    if current_user.is_a?(GuestUser)
      login_items = [
        {
          url: new_user_registration_path,
          title: 'Register'
        },
        {
          url: new_user_session_path,
          title: 'Login'
        }
      ]
      login_links = []
      login_items.each do |item|
        login_links << content_tag(tag_type, (link_to item[:title], item[:url], class: style))
      end

      login_links = login_links.join('')

      login_links.html_safe
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper styles
    if session[:source]
      greeting = "Thanks for visiting from #{session[:source]}! Please feel free to #{ link_to 'contact me', new_message_path, class: 'alert-link' } if you'd like to work together."
      content_tag(:div, greeting.html_safe, class: styles)
    end
  end

  def copyright_generator
    @copyright = ChznbaumViewTool::Renderer.copyright 'Chazona Baum', 'All rights reserved'
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: tech_news_path,
        title: 'News'
      },
      {
        url: new_message_path,
        title: 'Contact'
      },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    if flash[:alert]
      alert = flash[:alert]
      alert_image = :warning
      alert_title = "Alert"
    elsif flash[:error]
      alert = flash[:error]
      alert_image = :error
      alert_title = "Error"
    elsif flash[:notice]
      alert = flash[:notice]
      alert_image = :notice
      alert_title = "Notice"
    end
        
    if alert
      alert_generator alert, alert_image, alert_title
    end
  end

  def alert_generator msg, image, title
    js add_gritter(msg, image: image, title: title, sticky: false)
  end
end
