#Calculate the average revenue for Kickstarter a day. 

require 'date'

today = Date.today

kickstarter_birthday = Date.new(2009, 4, 28)

kickstarter_days_operating = (today - kickstarter_birthday).to_i

kickstarter_total_revenue = 305_000_000 * 5 / 100

kickstarter_per_day_revenue = kickstarter_total_revenue / kickstarter_days_operating

puts "Kickstarer makes $#{kickstarter_per_day_revenue} daily. That's just insane!"



