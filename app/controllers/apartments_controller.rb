class ApartmentsController < ApplicationController
    def new
        @building = Building.find(params[:building_id])
        @apartment = Apartment.new
    end

    def create
        @apartment = Apartment.new(apartment_params)
        @building = Building.find(params[:building_id])
        @apartment.building = @building
        @apartment.save
        redirect_to building_path(@building)
    end

    private

    def apartment_params
        params.require(:apartment).permit(:numero, :referencia)
    end
end
