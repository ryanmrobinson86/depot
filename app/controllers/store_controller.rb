class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @time = Time.now.to_formatted_s(:short)
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
  end
end
