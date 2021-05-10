class UsersController < ApplicationController
  def my_protfolio
    @tracked_stocks = current_user.stocks
  end
end
