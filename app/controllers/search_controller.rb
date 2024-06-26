# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
  end
end
