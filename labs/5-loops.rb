# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 5-loops.rb

# EXERCISE
# Build a deck of cards. Given the following arrays of card data,
# use a loop to write out the cards to the screen.
clubs = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
diamonds = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
hearts = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
spades = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]

# Sample output:
# 2 of Clubs
# 3 of Clubs
# 4 of Clubs
# ...etc
# Queen of Spades
# King of Spades
# Ace of Spades

#for card in clubs
#    puts "#{card} of Clubs"
#end

#for card in diamonds
#    puts "#{card} of Diamonds"
#end

#for card in hearts
#    puts "#{card} of Hearts"
#end

#for card in spades
#    puts "#{card} of Spades"
#end

# CHALLENGE #1
# The arrays are identical for each suit and can be simplified by using
# a ranks array as seen below. Try to complete the exercise again by
# combining these arrays.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

for suit in suits
    for card in ranks
        puts "#{card} of #{suit}"
    end
end

# CHALLENGE #2
# Deal a poker hand. Shuffle the deck and "deal" (i.e. display) a 5 card hand (i.e. 5 cards from the deck).
# You will want to look at the documentation for Arrays: https://ruby-doc.org/core-2.7.0/Array.html
card_1_rank = ranks.sample
card_1_suit = suits.sample
puts "#{card_1_rank} of #{card_1_suit}"

card_2_rank = ranks.sample
card_2_suit = suits.sample
puts "#{card_2_rank} of #{card_2_suit}"

card_3_rank = ranks.sample
card_3_suit = suits.sample
puts "#{card_3_rank} of #{card_3_suit}"

card_4_rank = ranks.sample
card_4_suit = suits.sample
puts "#{card_4_rank} of #{card_4_suit}"

card_5_rank = ranks.sample
card_5_suit = suits.sample
puts "#{card_5_rank} of #{card_5_suit}"


deck = []
for rank in ranks
  for suit in suits
    card = "#{rank} of #{suit}"
    deck.push(card)
  end
end

shuffled_deck = deck.shuffle
hand = shuffled_deck[0,5]

for card in hand
  puts card
end