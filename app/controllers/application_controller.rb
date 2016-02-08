
class ApplicationController < ActionController::Base


  def after_sign_in_path_for(resource)
    if resource.sign_in_count == 1
       user_path(@user)
    else
       root_path
    end
end

  protect_from_forgery with: :exception
end
