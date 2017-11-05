module ApplicationHelper
  def login_helper(style = '')
    if current_user.is_a?(GuestUser)
      (link_to 'Login', new_user_session_path, class: style) +
      (link_to 'Register', new_user_registration_path, class: style)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, data: { confirm: 'Are you sure?' }, class: style
    end
  end

  def source_helper(styles)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}, please feel free to #{ link_to 'contact me', contact_path } if you'd like to work togather"
      content_tag(:div, greeting.html_safe, class: styles)
    end
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_me_path,
        title: 'About Me'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
          url: tech_news_path,
          title: 'Tech News'
      }
    ]
  end

  def nav_helper style, tag_type = 'span'
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active_link?(item[:url])}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active_link?(path)
    "active" if current_page?(path)
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    alert_generator(alert) if alert
  end

  def alert_generator(msg)
    js add_gritter(msg, title: 'DD Serhat Portfolio')
  end
end
