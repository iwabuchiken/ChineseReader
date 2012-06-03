class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_controller_and_action_names

  def set_controller_and_action_names
    @current_controller = controller_name
    @current_action     = action_name
    
    # # User agent
    @user_agent = request.env["HTTP_USER_AGENT"]
    # # @user_agent = request.env["REMOTE_USER"]
    # @user_agent = request.env["REQUEST_URI"]
#     
    # if @user_agent == nil
      # @user_agent = "nil"
    # end
    
    # request.env
    # @request_env = request.env
    
  end
end
