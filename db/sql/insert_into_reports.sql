insert into reports (file_name, airline_id, starting_point, arrival_point, user_id) values
	("成田国際空港", "NRT/RJAA"),
	("函館空港", "HKD/RJCH"),
	("台湾桃園国際空港", "TPE/RCTP"),
	("香港国際空港", "HKG/VHHH");

	repo = Report.new(file_name:"5jpg", airline_id:12, starting_point:"ニューヨーク", arrival_point:"成田", user_id:0)