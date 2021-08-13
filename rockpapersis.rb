

puts "Computer goes first"

a = rand(3)
#a is my variable that holds the output of the rand function

if a == 0 
	comp = "rock"
elsif a == 1
	comp = "scissors"
elsif a == 2
	comp = "paper"
end
puts "Computer has chosen"

puts "It's player two's turn, please enter rock, paper or scissors"
p2 = gets.chomp

if (p2 != "rock") && (p2 != "paper") && (p2 != "scissors")
	puts "you have mistyped, please answer with rock, paper or scissors"
	p2 = gets.chomp
end

gameon = true

###############################################################################

while gameon == true

	if (((comp == "rock") && (p2 == "rock")) || ((comp == "paper") && (p2 == "paper")) || ((comp == "scissors") && (p2 == "scissors")))
		puts "It's a draw. Computer chose #{comp}. Player two chose #{p2}."
		gameon = false
	end

	if (comp == "paper" && p2 == "rock") || (comp == "scissors" && p2 == "paper") || (comp == "rock" && p2 == "scissors")
		puts "The computer has won! Computer chose #{comp}. Player two chose #{p2}."
		gameon = false
	end

	if (comp == "paper" && p2 == "scissors") || (comp == "scissors" && p2 == "rock") || (comp == "rock" && p2 == "paper")
		puts "Player 2 has won! Computer chose #{comp}. Player two chose #{p2}."
		gameon = false
	end
end

