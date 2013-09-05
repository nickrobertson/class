require 'pry'
d = {}
def count(person)
  #person.at(0).at(0).to_i + person.at(1).at(0).to_i
  person.each {|k,v| d[k] = (d[k]||0) + v}
    p person
end

def hit(yes)

end

card = ['2', '3', '4', '5', '6', '7', '8', '9', '10']#, 'jack', 'queen', 'king', 'ace']
suit = ['hearts', 'diamond', 'clubs', 'spades']
deck = card.product(suit)
deck.shuffle!

player = deck.pop(2)
dealer = deck.pop(2)
player.flatten
p player
p '---'

#p dealer
p '---'
playerCount = count(player)
p count(player)
p '---'

while playerCount < 22
p "Would you like another card"
response = gets.chomp
  if response = 'yes'
    hit = deck.pop
    hitCount = hit.at(0).at(0)
    p hit
    player = player.concat hit
    p '---'
    p player
  end
  break
end
p player
#p count(dealer)