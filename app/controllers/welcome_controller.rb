class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    render
  end
end
