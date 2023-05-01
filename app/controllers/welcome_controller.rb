class WelcomeController < ActionController::Base
  before_action :authenticate_user!

  def index
    render
  end



end
