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

	def new
		@aircraft = Aircraft.new
	end

	def create
		@aircraft = Aircraft.new(aircrafts_params)
		if @aircraft.save
			flash[:notice] = "会員登録完了"
			redirect_to("/aircrafts")
		else
			render("aircrafts/new")
		end
	end

	def aircrafts_params
		params.require(:aircraft).permit(:name, :email, :password)
	end
end
