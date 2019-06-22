class PagesController < ApplicationController
  layout 'front'

  def index
    @products = Product.all
    @categories = Category.all
  end

  def about
  end

  def contact
  end
end
