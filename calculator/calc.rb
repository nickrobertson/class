require 'pry'

def say(msg)
  puts "=> #{msg}"
end

say "What is your first number?"
num1 = gets.chomp

say "What is your second number?"
num2 = gets.chomp

say "What operation would you like to perform? 1) Add 2) Subtract 3) Multiply 4)"
operator = gets.chomp

if operator == '1'
  result = num1.to_i + num2.to_i
  binding.pry
elsif operator == '2'
  result = num1.to_i - num2.to_i 
  binding.pry
elsif operator == '3'
  result = num1.to_i * num2.to_i
  binding.pry
else
  result = num1.to_f / num2.to_f
  binding.pry
end

puts result