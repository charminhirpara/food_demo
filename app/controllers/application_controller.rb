# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend

  around_action :set_locale
  def set_locale(&action)
    locale = session[:mylocale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end
end
