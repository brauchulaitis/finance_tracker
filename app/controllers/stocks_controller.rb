class StocksController < ApplicationController
  protect_from_forgery except: :search
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        respond_to do |format|
          format.js
        end
      else
        flash.now[:alert] = "Please enter a valid symbol to search"
        redirect_to my_portfolio_path
      end
    else
      flash.now[:alert] = "Please enter a symbol to search"
      redirect_to my_portfolio_path
    end
  end
end
