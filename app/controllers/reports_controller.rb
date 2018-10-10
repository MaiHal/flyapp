class ReportsController < ApplicationController
	def index
		@reports = Report.all.paginate(page: params[:page], per_page:8)
		@airlines = Airline.all
	end

	def show
		@report = Report.find_by(id: params[:id])
		@airline = Airline.find_by(id: @report.airline_id)
		@airports = Airport.all
	end
end
