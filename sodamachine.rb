#Write a program for a soda machine. 
#Users can add or dispense sodas and show the stock levels of the different sodas in the machine. 

soda = [
	{:name => 'coke', :qty => 20},
	{:name => 'fanta', :qty => 15},
	{:name => 'sprite', :qty =>10},
	{:name => 'diet coke', :qty => 5}]

def machine (soda)
	a = 0
	while a >= 0
		puts "Would you like to purchase a soda?"
		user_action = gets.chomp.downcase

		if user_action =="no"
			puts "Suh-weet! You're here to restock the machine! What kind are you adding?"
				n = 0
				while n < 4
					puts "#{soda[n][:name]}"
					n += 1
				end

			kind_of_soda_adding = gets.chomp.downcase
			puts "How many #{kind_of_soda_adding} are you adding to the machine?"
			amount_of_soda_adding = gets.chomp.to_i
				if kind_of_soda_adding== "coke"
					soda[0][:qty] = soda[0][:qty] + amount_of_soda_adding
					puts "Thanks! There are now #{soda[0][:qty]} #{soda[0][:name]}s available in the machine."

				elsif kind_of_soda_adding == "fanta"
					soda[1][:qty] = soda[1][:qty] + amount_of_soda_adding
					puts "Thanks! There are now #{soda[1][:qty]} #{soda[1][:name]}s available in the machine."

				elsif kind_of_soda_adding == "diet coke"
					soda[3][:qty] = soda[3][:qty] + amount_of_soda_adding
					puts "Thanks! There are now #{soda[2][:qty]} #{soda[2][:name]}s available in the machine."

				elsif kind_of_soda_adding == "sprite"
					soda[2][:qty] = soda[2][:qty] + amount_of_soda_adding
					puts "Thanks! There are now #{soda[3][:qty]} #{soda[3][:name]}s available in the machine."

				else
						puts "Sorry buddy, we don't carry #{kind_of_soda_adding} in this machine. "

				end

		elsif user_action =="yes"
			puts "Great! What kind of soda would you like to have?"
				n = 0
				while n < 4
					if
						soda[n][:qty] > 0
						puts "#{soda[n][:name]}"
					end
					n += 1
				end

				choice = gets.chomp.downcase
				if choice == "coke"
					soda[0][:qty] = soda[0][:qty] - 1
					puts "Here's your #{soda[0][:name]}, there are #{soda[0][:qty]} left."

				elsif choice == "fanta"
					soda[1][:qty] = soda[1][:qty] - 1
					puts "Here's your #{soda[1][:name]}, there are #{soda[1][:qty]} left."

				elsif choice == "sprite"
					soda[2][:qty] = soda[2][:qty] - 1
					puts "Here's your #{soda[2][:name]}, there are #{soda[2][:qty]} left."

				elsif choice == "diet coke"
					soda[3][:qty] = soda[3][:qty] - 1
					puts "Here's your #{soda[3][:name]}, there are #{soda[3][:qty]} left."
				end	

		else
			puts "Whoa buddy, I didn't understand you!"
		end
		a += 1
	end
end

machine (soda)


