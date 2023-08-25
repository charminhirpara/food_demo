# frozen_string_literal: true

class HomesController < ApplicationController
  def locales
    session[:mylocale] = params[:locale] if params[:locale].present?
    redirect_to root_path
  end
end
