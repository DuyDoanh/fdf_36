class FoodsandDrinksController < ApplicationController
  def home; end

  def detail; end

  def product
    @category = Category.all
    @products = Product.sort_by_create_at.paginate page: params[:page]
  end
end
