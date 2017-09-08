class StaticPagesController < ApplicationController
  def index
  end
  
  # def landing_page
  #   @featured_product = Product.first
  # end
  
  def landing_page
    @products = Product.limit(3)
  end
  
# def landing page
#   @products.each_with_index do |item, index|
#     puts "current_index: #{index}"
#   end
# end
  
end
