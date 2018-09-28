insert into aircrafts (file_name, airline_id, aircraft_type, airport_id, camera_model, user_id, taken_at) values
	("1.jpg", 1, "B747", 1, "Nikon D5300", 0, "2016-02-15"),
	("2.jpg", 2, "B747", 1, "Nikon D5300", 0, "2017-06-07"),
	("3.jpg", 3, "B747", 1, "Nikon D5300", 0, "2017-06-07"),
	("4.jpg", 4, "B747", 1, "Nikon D5300", 0, "2017-06-07"),
	("5.jpg", 5, "B747", 1, "Nikon D5300", 0, "2017-06-07"),
	("6.jpg", 6, "A", 1, "Nikon D5300", 0, "2016-02-15"),
	("7.jpg", 7, "B", 1, "Nikon D5300", 0, "2016-02-15"),
	("8.jpg", 8, "B", 1, "Nikon D5300", 0, "2016-02-15"),
	("9.jpg", 9, "B", 1, "Nikon D5300", 0, "2016-02-15"),
	("10.jpg", 5, "B747", 1, "Nikon D5300", 0, "2016-02-15"),
	("11.jpg", 1, "B", 1, "Nikon D5300", 0,  "2016-02-15");

	air = Aircraft.new(file_name:"11.jpg", airline_id:1, aircraft_type:"B747", airport_id:1, camera_model:"Nikon D5300", user_id:0, taken_at:"2016-02-15")