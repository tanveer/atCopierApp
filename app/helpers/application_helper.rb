module ApplicationHelper
  def welcome_string
    if user_signed_in?
      f_name = current_user.first_name
      l_name = current_user.last_name
      return "Welcome #{f_name} #{l_name}"
    end
  end
end
