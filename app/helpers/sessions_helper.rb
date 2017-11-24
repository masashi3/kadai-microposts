module SessionsHelper
  def current_user
    @current_iser ||=User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !!current_user
  end
end
