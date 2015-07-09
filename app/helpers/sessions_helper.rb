module SessionsHelper

  # logs in the given user
  def log_in(user)
    session[:user_id] = user.user_id
  end

  # Returns the current logged_in user(if any).
  def current_user
    @current_user(user)
      user == current_user
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
end
