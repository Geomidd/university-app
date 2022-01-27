module ApplicationHelper
  def session_link
    if logged_in?
      button_to("Logout", logout_path, method: :delete, form_class: "valign-wrapper", class: "btn-flat waves-effect valign-wrapper")
    else
      link_to("Login", login_path)
    end
  end
end
