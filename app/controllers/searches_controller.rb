class SearchesController < ApplicationController
  def search
    @category = Category.all
    @products = Product.search_product(params[:term]).order_by_product.paginate page: params[:page]
  end
end
