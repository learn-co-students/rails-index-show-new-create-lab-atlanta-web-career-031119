class CouponsController < ApplicationController
    def index
        @all_coup=Coupon.all
    end
    
    def show
        @coupon=Coupon.find(params[:id])
    end

    def new
    end

    def create
        @coupon=Coupon.new
        @coupon.coupon_code=params[:coupon_code]
        @coupon.store=params[:store]
        @new_coup=@coupon.save
        redirect_to coupons_path(@new_coup)
    end
end