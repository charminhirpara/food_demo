# frozen_string_literal: true

class CheckoutsController < ApplicationController
  def index
    @user = current_user
    @carts = current_user.carts.all
  end
end
