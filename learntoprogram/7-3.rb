# Leap years. Write a program that asks for a starting year and an ending
# year and then puts all the leap years between them (and including them,
# if they are also leap years). Leap years are years divisible by 4 (like 1984
# and 2004). However, years divisible by 100 are not leap years (such as
# 1800 and 1900) unless they are also divisible by 400 (such as 1600 and
# 2000, which were in fact leap years). What a mess!

puts 'Please input a starting year.'
starting_year = gets.chomp
puts 'Please input an ending year.'
ending_year = gets.chomp

while true
	if starting_year % 4 == 0
		puts 'test'
		while starting_year < ending_year
			starting_year = starting_year.to_i + 4
			puts starting_year
		break
		end
	end

	# if starting_year = starting_year.to_i + 1
	# 	puts starting_year
		
	# end
	break
end
