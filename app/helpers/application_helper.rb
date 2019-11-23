module ApplicationHelper
    def render_footer
        if logged_in?
            render partial: 'layouts/loggedin_links'
        end
    end
end
