puts "How many bottles would you like to start with"
bottles = gets.chomp.to_i

def line_width
 return  80
end

def take_one_down
	puts "take one down, pass it around".center(line_width)
end

while bottles > 0
	puts ""
	puts("#{bottles} bottles of beer on the wall".center(line_width))
	puts("#{bottles} bottles of beer".center(line_width))
	take_one_down
	bottles = bottles - 1.to_i
	puts((bottles.to_s + (bottles == 1 ? " bottle" : (bottles == 0 ? "  bottles left, time to go to the store" : "bottles of beer on the wall"))).center(line_width))
end


