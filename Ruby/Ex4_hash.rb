puts "Please input text: "
text = gets.chomp
words = text.split(" ")

#starting from 0
frequencies = Hash.new(0)
words.each do |x| 
    frequencies[x] += 1 
end
frequencies = frequencies.sort_by do |f,c|
    c
end
frequencies.reverse!

#output
frequencies.each do |name, count|
  puts name + " " + count.to_s
end
