#Methods assignment for Collin 

#Method without a variable
def post_production
	"The last storyteller is always the editor. Let's get to it!"
end

#Method with variables
def ingestion(number_of_cards, hours_per_card)
	number_of_cards * hours_per_card
end

#Method with a default variable
def editing_time(time = 3)
	"It takes #{time} hours to finish post production on one minute of a finished piece."
end

def hours_actually_editing(deliverable_length_minutes, editing_time)
	deliverable_length_minutes * editing_time
end

#Method returning a booLean
def paycheck(hours_actually_editing, paycheck_total, hourly_charge = 50)
	(paycheck_total/hours_actually_editing) > hourly_charge
end

#Method using a float
def dvd_time(number_of_dvds, hours_per_dvd = 0.2647)
	(number_of_dvds * hours_per_dvd)
end


#variables

number_of_cards = 5
hours_per_card = 1.35
time = 3
deliverable_length_minutes = 15
hours_actually_editing = 73 
paycheck_total = 4000
number_of_dvds = 5
hourly_charge = 45
hours_per_dvd = 0.2647

puts post_production

puts "It takes #{ingestion(number_of_cards, hours_per_card)} hours to ingest the footage onto the computer for editing."

puts editing_time

puts "Am I getting paid enough for all of this? #{paycheck(hourly_charge, hours_actually_editing, paycheck_total)}"

puts "And after all that work, the client will never realize you had to spend #{dvd_time(number_of_dvds, hours_per_dvd)} hours burning DVDs for them to hand out around the office. Sorry about that. "