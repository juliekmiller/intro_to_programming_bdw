right_now  = Time.now.to_i
end_of_2012 = 1357023599
time_left  = end_of_2012 - right_now

seconds    =  time_left % 60
htime_left = (time_left - seconds) / 60
minutes    =  htime_left % 60
htime_left = (htime_left - minutes) / 60
hours      =  htime_left % 24
htime_left = (htime_left - hours) / 24
days       =  htime_left % 30.5 
months     = (htime_left - days) / 30.5

dtime_left = time_left * 7

dseconds   =  dtime_left % 60
dtime_left = (dtime_left - dseconds) / 60
dminutes   =  dtime_left % 60
dtime_left = (dtime_left - dminutes) / 60
dhours     =  dtime_left % 24
dtime_left = (dtime_left - dhours) / 24
ddays      =  dtime_left % 30.5 
dmonths    = (dtime_left - ddays) / 30.5

puts "Assuming the world doesn't end ahead of time, there are #{months} months, #{days} days, #{hours} hours, #{minutes} minutes, and #{seconds} seconds left in 2012. However, for a dog there is #{dmonths} months, #{ddays} days, #{dhours} hours, #{dminutes} minutes, and #{dseconds} seconds left."


