puts "Would you like to [add], [multiply], or [subtract]?"
response = gets.chomp

if response == "add"
  puts "Which numbers would you like to add?"
  val1 = gets.chomp
  val2 = gets.chomp
  answer = val1 + val2

elsif response == "subtract"
  puts "Which numbers would you like to subtract?"
  val1 = gets.chomp
  val2 = gets.chomp
  answer = val1 - val2

elsif response == "multiply"
  puts "Which numbers would you like to multiply?"
  val1 = gets.chomp
  val2 = gets.chomp
  answer = val1 * val2
end

puts "Your answer is #{answer}"