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
        @coupon=Coupon.new(fuck_you)
        @coupon.coupon_code
        @coupon.store
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    private

    def fuck_you
        params.permit(:coupon_code, :store)
    end
end