class ReportsController < ApplicationController
	def index
		@reports = Report.all.paginate(page: params[:page], per_page:8)
		@airlines = Airline.all
		@users = User.all
	end

	def show
		@report = Report.find_by(id: params[:id])
		@airline = Airline.find_by(id: @report.airline_id)
		@airports = Airport.all
	end

	def new
		@report = Report.new
		@user = User.find_by(id: current_user.id)
		@airlines = Airline.all
	end

	def create
		@report = Report.new(reports_params)
		uploaded_file = params[:file_name]
		@report.file_name = uploaded_file.original_filename
		output_path = Rails.root.join('public/images/reports', uploaded_file.original_filename)
		File.open(output_path, 'w+b') do |fp|
			fp.write  uploaded_file.read
		end
		if @report.save
			flash[:notice] = "会員登録完了"
			redirect_to("/reports")
		else
			render("reports/new")
		end
	end

	def reports_params
		params.permit(:file_name, :airline_name, :aircraft_type, :airport_name, :camera_model, :user_id, :taken_at)
	end
end
