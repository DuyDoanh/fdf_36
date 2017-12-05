class StaticPagesController < ApplicationController

  def home; end

  def product
    @category = Category.all
    @products = Product.order_by_product.paginate page: params[:page]
  end
end
