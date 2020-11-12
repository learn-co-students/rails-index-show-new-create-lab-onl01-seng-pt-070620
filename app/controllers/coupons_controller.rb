class CouponsController < ApplicationController

    def index
    #byebug
        @coupons = Coupon.all
      end
    
      def show
        @c = Coupon.find(params[:id])
      end

    def new
        @c = Coupon.new 
    end

    def create
        @c = Coupon.new
        @c.coupon_code = params[:coupon][:coupon_code]
        @c.store = params[:coupon][:store]
        @c.save
        redirect_to coupon_path(@c)
    end

end
