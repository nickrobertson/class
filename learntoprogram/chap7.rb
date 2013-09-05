# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# if name == 'Chris'
# 	puts 'What a lovely name!'
# else
# 	if name == 'Katy'
# 		puts 'What a lovely name!'
# 	end
# end


# while true
# 	input = gets.chomp
# 	puts input
# 	if input == 'bye'
# 		break
# 	end
# end

# puts 'Come again soon!'


# A Few Things to Try
# • “99 Bottles of Beer on the Wall.” Write a program that prints out the lyrics
# to that beloved classic, “99 Bottles of Beer on the Wall.”

puts 'How many bottles do you have on the wall?'
bottles = bottles
number_of_bottles = gets.chomp.to_i
	while number_of_bottles > 1
		
		puts "#{number_of_bottles},  #{bottles} of beer on the wall, #{number_of_bottles} #{bottles} of beer!"
		number_of_bottles = number_of_bottles - 1
		puts "Take one down and pass it around, #{number_of_bottles} #{bottles} of beer on the wall." 
		if number_of_bottles  < 2
			bottles = bottle
		end
	end


puts 'No more bottles of beer on the wall'




# • Deaf grandma. Whatever you say to Grandma (whatever you type in), she
# should respond with this:
# HUH?! SPEAK UP, SONNY!
# unless you shout it (type in all capitals). If you shout, she can hear you
# (or at least she thinks so) and yells back:
# NO, NOT SINCE 1938!
# To make your program really believable, have Grandma shout a different
# year each time, maybe any year at random between 1930 and 1950. (This
# part is optional and would be much easier if you read the section on Ruby’s
# random number generator on page 33.) You can’t stop talking to Grandma
# until you shout BYE.
# Hint 1: Don’t forget about chomp! 'BYE' with an Enter at the end is not the
# same as 'BYE' without one!
# Hint 2: Try to think about what parts of your program should happen
# over and over again. All of those should be in your while loop.
# Hint 3: People often ask me, “How can I make rand give me a number in a
# range not starting at zero?” But you don’t need it to. Is there something
# you could do to the number rand returns to you?
# • Deaf grandma extended. What if Grandma doesn’t want you to leave?
# When you shout BYE, she could pretend not to hear you. Change your
# previous program so that you have to shout BYE three times in a row.
# Make sure to test your program: if you shout BYE three times but not in
# a row, you should still be talking to Grandma.
# • Leap years. Write a program that asks for a starting year and an ending
# year and then puts all the leap years between them (and including them,
# if they are also leap years). Leap years are years divisible by 4 (like 1984 and 2004). However, years divisible by 100 are not leap years (such as
# 1800 and 1900) unless they are also divisible by 400 (such as 1600 and
# 2000, which were in fact leap years). What a mess!
