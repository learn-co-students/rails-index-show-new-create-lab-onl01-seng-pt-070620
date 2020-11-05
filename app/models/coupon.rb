class Coupon < ActiveRecord::Base
    def show_coupon
        self.coupon_code + "." + self.store
    end 
end 