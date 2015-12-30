module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
    redirect_to(session[:forwarding_url] || root_url)
    session.delete(:forwarding_url)
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  #Logs out the given user and deletes cookies.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end

  def restrict_to_logged_in
    unless logged_in?
      store_location
      flash[:danger] = "Log in to view this page"
      redirect_to login_url 
    end
  end
end
