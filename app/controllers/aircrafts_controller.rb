class AircraftsController < ApplicationController
	def index
		@aircrafts = Aircraft.all.paginate(page: params[:page], per_page: 8)
		@airlines = Airline.all
		@airports = Airport.all
	end

	def show
		@aircraft = Aircraft.find_by(id: params[:id])
		@airline = Airline.find_by(id: @aircraft.airline_id)
		@airport = Airport.find_by(id: @aircraft.airport_id)
	end
end
