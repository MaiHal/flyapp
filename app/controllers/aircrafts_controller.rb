class AircraftsController < ApplicationController
	def index
		@aircrafts = Aircraft.all.paginate(page: params[:page], per_page: 8)
		@airlines = Airline.all
		@airports = Airport.all
		@users = User.all
	end

	def show
		@aircraft = Aircraft.find_by(id: params[:id])
		@airline = Airline.find_by(id: @aircraft.airline_id)
		@airport = Airport.find_by(id: @aircraft.airport_id)
		@user = User.find_by(id: @aircraft.user_id)
	end

	def new
		@aircraft = Aircraft.new
		@user = User.find_by(id: current_user.id)
		@airlines = Airline.all
	end

	def create
		@aircraft = Aircraft.new(aircrafts_params)
		uploaded_file = params[:file_name]
		@aircraft.file_name = uploaded_file.original_filename
		output_path = Rails.root.join('public/images/aircraft', uploaded_file.original_filename)
		File.open(output_path, 'w+b') do |fp|
			fp.write  uploaded_file.read
		end
		if @aircraft.save
			flash[:notice] = "会員登録完了"
			redirect_to("/aircrafts")
		else
			render("aircrafts/new")
		end
	end

	def aircrafts_params
		params.permit(:file_name, :airline_name, :aircraft_type, :airport_name, :camera_model, :user_id, :taken_at)
	end
end
