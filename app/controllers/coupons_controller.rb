class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end
  def show
    @coupon = Coupon.find(params[:id])
  end
  def create
    redirect_to coupon_path(Coupon.create(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code]))
  end
end
