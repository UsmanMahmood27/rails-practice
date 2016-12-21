class WelcomeController < ApplicationController

  before_action :authenticate_user!, :only => [:dash_board]

  def home    
  end

  def dash_board
  end

end