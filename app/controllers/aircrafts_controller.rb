class AircraftsController < ApplicationController
	def index
		@aircrafts = Aircraft.all.paginate(page: params[:page], per_page: 8)
		@airlines = Airline.all
		@airports = Airport.all
	end
end
