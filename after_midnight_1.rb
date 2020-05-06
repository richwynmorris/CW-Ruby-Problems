# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. If the number of 
# minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the 
# time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

def time_of_day(time)

	hour = time / 60  
	minutes = time % 60

	if hour > 24
		loop do
			break if hours < 24 
			hours -= 24
		end
	elsif hour < 0
		loop do
			break if hours > 0
			hours += 24
		end
	end 

	if hour < 10
		hour_result = sprintf("%0d", hour)
	elsif minutes < 10
		minutes_result = sprintf("%0d", minutes)
	end

	"#{hour_result}:#{minutes_result}"

end

p time_of_day(0) #== "00:00"