class CouponsController<ApplicationController

    def index
        @coupons=Coupon.all
    end

    def new
    end

    def create
        @user=Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        redirect_to coupon_path(@user)
    end

    def show
        @user=Coupon.find(params[:id])
    end


end