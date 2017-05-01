module ApplicationHelper
    def login_helper
        if current_user.is_a?(GuestUser)
            (link_to "Register", new_user_registration_path) + " " +
            (link_to "Login", new_user_session_path)
        else
            link_to "Logout", destroy_user_session_path, method: :delete
        end
    end

    def source_helper(layout_name)
        if session[:source]
            greeting = "Thanks for visiting from #{session[:source]}!"
            content_tag(:p, greeting, class: "source-#{layout_name}")
        end
    end

    def copyright_generator
        @copyright = ChznbaumViewTool::Renderer.copyright 'Chazona Baum', 'All rights reserved'
    end
end
