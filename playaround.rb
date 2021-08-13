
comp = rand(2)     #0,1,2
comp_choice = ""

if comp == 0 
	comp_choice = "rock"
elsif comp == 1
	comp_choice = "paper"
elsif comp == 2
	comp_choice = "scissors"
end

puts "Computer chose #{comp_choice}"

puts "Please enter your choice: rock, paper or scissors."
player = gets.chomp

if  comp_choice == "rock" && player == "rock" || 
	comp_choice == "paper" && player == "paper" ||
	comp_choice == "scissors" && player == "scissors"
	puts "it's a draw! Computer chose #{comp_choice} and player chose #{player}."	
end
	
if  comp_choice == "rock" && player == "paper" || 
	comp_choice == "paper" && player == "scissors" ||
	comp_choice == "scissors" && player == "rock"
	puts "Player wins! Computer chose #{comp_choice} and player chose #{player}."	
end

if  comp_choice == "rock" && player == "scissors" || 
	comp_choice == "paper" && player == "rock" ||
	comp_choice == "scissors" && player == "paper"
	puts "Computer wins! Computer chose #{comp_choice} and player chose #{player}."	
end
	










