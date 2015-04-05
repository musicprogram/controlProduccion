class WelcomeController < ApplicationController
  def index
  	@home_page = true
  	@footer_welcome = true
  end
end
