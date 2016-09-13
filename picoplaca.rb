def picoplaca(plate = "PYX0989", date = "2016-09-18", time = "18:43:22" )
	
	require 'time'
	t = Time.parse(date + " " + time)

	if ( 65959 < t.strftime("%H%M%S").to_i && t.strftime("%H%M%S").to_i < 93000) || (155959 < t.strftime("%H%M%S").to_i && t.strftime("%H%M%S").to_i < 193000)
		case plate[-1,1].to_i
		when 1,2
			t.strftime("%A") == "Monday"
		when 3,4
			t.strftime("%A") == "Tuesday"
		when 5,6
			t.strftime("%A") == "Wednesday"
		when 7,8
			t.strftime("%A") == "Thursday"
		when 9,0
			t.strftime("%A") == "Friday" 
		else
			false
		end
	else
		false
	end
end