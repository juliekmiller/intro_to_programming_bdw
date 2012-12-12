#Blackjack - Go!

#setting up the deck, 4 of each (1 for each suit)
bicycle = [2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11]

def blackjack(deck)
	puts "Do you like gambling? Do you love sitting in a semi circle? Then tell me to hit and we'll play blackjack!!"
	action = gets.chomp
	deck.shuffle! #shuffling the deck
	dealer_card_one = deck.pop #dealing to the dealer
	dealer_card_two = deck.pop

		if action == "hit"
			dealer_hand_one = dealer_card_one + dealer_card_two
			card_one = deck.pop #dealing to you
			card_two = deck.pop #dealing to you
			hand_one = card_one + card_two #because I am crap at math, let's get ruby to do it for you!
			puts "The dealer shows one card, it's #{dealer_card_one}."
			puts "You've been dealt #{card_one} and a #{card_two}. Your total points are #{hand_one}."

				#perfect scenario is that you are dealt a blackjack.....
				if hand_one == 21
					puts "Blackjack!"

				#setting up the ability to split or double down
				elsif card_one == card_two
					puts "Would you like to split this hand?"

				elsif hand_one > 21
					puts "You bust!"

				#for every other scenario you will either take a new card or stay an hope the dealer busts. 
				else 
					puts "Would you like to hit or stay?"
					action = gets.chomp

					if action == "hit"
						card_three = deck.pop
						hand_two = hand_one + card_three
						puts "You've been dealt a #{card_three} and your new total is #{hand_two}"

						if hand_two == 21
							puts "Blackjack"

						elsif hand_two > 21
							puts "You bust!"

						else
							puts "Sorry, I'm just learning so we're stopping here."
						end

					elsif action == "stay"
						puts "You're staying with the cards you've got!"
					end
				end

		elsif action == "stay"
			puts "You're sticking with the cards you've got! Now let's see what the dealer has. The dealer has #{dealer_card_one} and #{dealer_card_two} for a total of #{dealer_hand_one}"

			if dealer_hand_one == 21
				puts "Blackjack!"

			elsif dealer_hand_one > 21
				puts "Dealer busts, you win!"
							
							
			end

		end

end

blackjack(bicycle)

