class PagesController < ApplicationController
  def index
  end

  def profile
  end

  def update_profile
    if current_user.update(update_profile_params)
      redirect_to profile_path, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  private

  def update_profile_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
