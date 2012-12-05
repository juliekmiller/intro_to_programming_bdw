#Methods with Arrays assignment for Collin 

#Method without a variable
def post_production
	"The last storyteller is always the editor. Let's get to it!"
end

#Method with variables
def ingestion(number_of_cards, hours_per_card)
	number_of_cards * hours_per_card
end

def editing_time(deliverable_length_minutes)
	deliverable_length_minutes * 3
end

def hours_actually_editing(deliverable_length_minutes)
	deliverable_length_minutes * 4.5
end

#Method returning a booLean
def paycheck(hours_actually_editing, paycheck_total, hourly_charge = 50)
	(paycheck_total/hours_actually_editing) > hourly_charge
end

#With an
def delviery_formats(format)
	format = {:dvd => {:burn_time => "0.2647"}, :data_disk => {:burn_time => "0.1539"}, :hard_drive => {:burn_time => "0.01456"}, :upload => {:burn_time => "0.2498"}}

	if format.include?(format.downcase)
		"The final project will need to be delievered via #{format}."
	else
		"You need to call the client, because they're asking for a delivery method you don't provide."
	end
end



#variables
time = 3
deliverable_length_minutes = 15


puts post_production

puts "It takes #{ingestion(5, 1.35)} hours to ingest the footage onto the computer for editing."

puts "Based on your calculations, it should take you #{editing_time(15)} hours to finish this project. BUT you actually spent #{hours_actually_editing(15)}"

puts "Am I getting paid enough for all of this? #{paycheck(45, 67.5, 4000)}"

puts delviery_formats("dvd")

puts "And after all that work, the client will never realize you had to spend #{deliverable_time} hours burning DVDs for them to hand out around the office and doesn't want to pay for that. Sorry about that. "