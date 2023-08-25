# frozen_string_literal: true

class FoodsController < ApplicationController
  def index
    @pagy, @foods = pagy(Food.order(created_at: :desc), items: 9)

    @foods = @foods.where('name like ?', "%#{params[:name]}%") if params[:name].present?
    @foods = @foods.where(category_id: params[:category_ids]) if params[:category_ids].present?
    @foods = Food.order(created_at: :desc)
  end

  def show
    @food = Food.find(params[:id])
  end

  def search
    key = "%#{params[:key]}%"
    @foods = Food.where('name LIKE ?', key)
  end
end
