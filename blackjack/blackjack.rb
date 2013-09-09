require 'pry'

def card_count(user)
  arr = user.map{|e| e[0]}
  
  total = 0

  arr.each do |value|
    if value == "ace"
      total += 11
    elsif value.to_i == 0 # J, Q, K
      total += 10
    else
      total += value.to_i
    end
  end

  # correct for Aces
  arr.select{|e| e == "ace"}.count.times do
    if total > 21
      total -= 10
    end
  end
  total
end

def hit_or_stay(response, user)
  if response = 'hit'
    user << deck.pop
  elsif response = 'stay'
    card_count(player)
  end
end

#Start Game

p "Welcome to Blackjack!"
p "---------------------"

suit = ['hearts', 'diamond', 'clubs', 'spades']
card = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'jack', 'queen', 'king', 'ace']

deck = card.product(suit)
deck.shuffle!

#Deal Cards
player = []
dealer = []

player << deck.pop
dealer << deck.pop
player << deck.pop
dealer << deck.pop


# puts player
# puts '---'

# puts dealer
# puts '---'

playerCount = card_count(player)
dealerCount = card_count(dealer)

# Player Turn

puts "Your hand is showing #{player[0]} and #{player[1]}, for a total of: #{playerCount}"
puts '---'
puts "The dealer\'s top card is a #{dealer[1]}"
puts '---'


$i = 2
if playerCount == 21
  puts "Congrats, you hit blackjack! You win!"
  exit
end

while card_count(player) < 22 do
  puts "Would you like to \'hit\'' or \'stay\'?"
  response = gets.chomp
  if response == 'hit'
    puts ""
    player << deck.pop
    puts "Your new card is: #{player[$i]}"
    puts ""
    $i += 1
    p "Your card count now is: #{card_count(player)}"
    if card_count(player) > 21
      puts 'You busted, the dealer wins.'
      exit
    end
  elsif response == 'stay'
    p "Your card count is: #{card_count(player)}"
    break
    puts ""
  end
end

#Dealers Turn
$i = 2
puts "The dealer is showing #{dealer[0]} and #{dealer[1]}, for a total of: #{dealerCount}"
if dealerCount == 21
  puts "Sorry, the dealer hit blackjack! You lose!"
  exit
end

while card_count(dealer) < 17 do
  dealer << deck.pop
  puts "The dealers new card is: #{dealer[$i]}"
  $i += 1
  p "The dealers card count now is: #{card_count(dealer)}"
  if card_count(dealer) > 21
    puts 'Congats, the dealer busted. You win!'
  end
end
  
if dealerCount > playerCount
  puts "Sorry, dealer wins."
elsif playerCount > dealerCount
  puts "Congrts, you win!"
else
  puts "You push, it is a tie."
end
    

