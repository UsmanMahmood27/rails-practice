class WelcomeController < ApplicationController

  before_action :authenticate_user!, :only => [:dash_board, :upload_image, :save_image]

  def home    
  end

  def dash_board
    @user = current_user
  end

  def upload_image
    @user = current_user
  end

  def save_image
    @user = current_user
    @user.update user_params
    flash[:sucess] = 'File Uploaded Successfully'
    redirect_to dash_board_path
  end

  private

    def user_params
      params.require(:user).permit(:avatar)
    end

end