class OrdersController < ApplicationController
  before_action :find_order!, only: :show

  def index
    @orders = Order.all
  end

  def show
  end

  private
  def find_order!
    @order = Order.find_by!(number: params[:number])
  end

  def order_params
    params.require(:order).permit!
  end
end
