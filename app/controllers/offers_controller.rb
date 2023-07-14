class OffersController < ApplicationController
    def index
        @offers = Offer.all
    end

    def new
        @offer = Offer.new
    end

    def create
        @offer = Offer.new(offer_params)
        @user = User.find(session[:user_id])
        @offer.user = @user
        if @offer.save
            redirect_to offers_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def offer_params
        params.require(:offer).permit(:brand, :model, :fuel_mode, :horsepower, :color, :price_per_day, :min_age, :photo)
    end
end
