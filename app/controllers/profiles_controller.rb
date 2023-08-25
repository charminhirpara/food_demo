# frozen_string_literal: true

class ProfilesController < ApplicationController
  def index
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to '/profiles', notice: 'Profile updated successfully.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name, :middle_name, :last_name, :email, :phone_no,
      :address, :landmark, :city, :state, :country, :pin_code
    )
  end
end
