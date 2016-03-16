=begin
All codes of Ruby Exs are based on ruby tutorial on codecademy!
Mar/2016
=end

# the difference between 'puts' and 'print' is taht 'puts' will add a new (blank) line after the thing you want it to print.
puts "What's your first name?"
first_name = gets.chomp.capitalize!

puts "What's your last name?"
last_name = gets.chomp.capitalize!

puts "Where are you from?"
city = gets.chomp.capitalize!

puts "What is the abbreviation of your state?"
state = gets.chomp.upcase!

print "Your name is #{last_name} #{first_name}. You come from #{city}, #{state}"
