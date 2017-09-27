module ApplicationHelper
  def login_helper(style = '')
    if current_user.is_a?(GuestUser)
      (link_to 'Login', new_user_session_path, class: style) +
      (link_to 'Register', new_user_registration_path, class: style)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, data: { confirm: 'Are you sure?' }, class: style
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: 'source-greeting')
    end
  end
end
