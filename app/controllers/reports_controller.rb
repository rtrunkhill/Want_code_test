class ReportsController < ApplicationController

def index
    @coupons = Coupon.all
    @redeemed = OrderItem.where(source_type: "Coupon").all
    @products = Product.paginate(page: params[:page], per_page: 10)
    respond_to do |format|
        format.html
        format.json { render json: @products }
    end
end

private
def products_params
    params.require(:product).permit!
end

end
