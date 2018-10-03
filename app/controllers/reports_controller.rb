class ReportsController < ApplicationController
	def index
		@reports = Report.all.paginate(page: params[:page], per_page:8)
		@airlines = Airline.all
	end
end
