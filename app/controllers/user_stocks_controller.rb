class UserStocksController < ApplicationController
  def create
    stock = Stock.check_db(params[:ticker])
    if stock.blank?
    stock = Stock.new_lookup(params[:ticker])
    stock.save
      end
    @user_stocks = UserStock.create(user:current_user, stock:stock)
    flash[:notice] = "Stock #{stock.name} was successfully added to your stocks"
    redirect_to my_protfolio_path

  end
end
