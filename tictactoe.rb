
#
#
board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
# board = an empty string array with 9 spaces
# The 9 spaces represent the tic tac toe board

puts " #{board[0]} | #{board[1]} | #{board[2]} "
# print a string. This places the first, second and third array values in each position 

puts "------------"
# this is a visual divider before the 2nd coloumn

puts " #{board[3]} | #{board[4]} | #{board[5]} "
# print a string. This places the fourth, fifth and sixth array values in each position

puts "------------"
# this is a visual divider before the 3nd coloumn

puts " #{board[6]} | #{board[7]} | #{board[8]} "
# print a string. This places the seventh, eighth and ninth array values in each position

#starting with no one winning
win = false

#lets start by asking if player X has got any of the win combinations
#because we ask player X to go first, their combo's should be checked first
#write a method that checks if these conditions are met


	if (board[0] == "X") && (board[1] == "X") && (board[2] == "X") ||
	   (board[3] == "X") && (board[4] == "X") && (board[5] == "X") ||
	   (board[6] == "X") && (board[7] == "X") && (board[8] == "X") 
	   win = true
	   puts "Player X has won the game using the row style"
	end

	if (board[0] == "X") && (board[3] == "X") && (board[6] == "X") ||
	   (board[1] == "X") && (board[4] == "X") && (board[7] == "X") ||
	   (board[2] == "X") && (board[5] == "X") && (board[8] == "X") 
		win = true
		puts "Player X has won the game using the col style"
	end

	if (board[0] == "X") && (board[4] == "X") && (board[8] == "X") ||
	   (board[2] == "X") && (board[4] == "X") && (board[6] == "X") 
	  win = true
	  puts "Player X has won the game using the diagonal style"
	end

	#Now lets ask if player O has any of the win combinations

	if (board[0] == "O") && (board[1] == "O") && (board[2] == "O") ||
	   (board[3] == "O") && (board[4] == "O") && (board[5] == "O") ||
	   (board[6] == "O") && (board[7] == "O") && (board[8] == "O") 
	  win = true
	  puts "Player O has won the game using the row style"
	end

	if (board[0] == "O") && (board[3] == "O") && (board[6] == "O") ||
	   (board[1] == "O") && (board[4] == "O") && (board[7] == "O") ||
	   (board[2] == "O") && (board[5] == "O") && (board[8] == "O") 
	  win = true
	  puts "Player O has won the game using the col style"
	end

	if (board[0] == "O") && (board[4] == "O") && (board[8] == "O") ||
	   (board[2] == "O") && (board[4] == "O") && (board[6] == "O") 
	  win = true
	  puts "Player O has won the game using the diagonal style"
	end

# a trick we can add later is check these conditions only after three or more turns have been taken, to save processing

# now lets check the draw conditions
# the maximum number of moves we can make is 9, because the board will be filled up
# so lets make a counter to check when 9 moves are taken and no win state is achieved, conclude a draw

#now we need a counter to see who's turn it is
# if the turn is even it's X's turn, if the counter is odd, it's O's turn

counter = 0 

while win != true
  # while no one has won
  # check who's turn it is
    if counter.even?  #checks if it's X's turn
    puts "Player " + "X" + "'s turn, please enter a board position between 1 and 9"

	a = gets.chomp.to_i
	puts "You've entered " + a.to_s
	
		if a > 9 
			puts "Please try again, that number is too high"
			a = gets.chomp.to_i
		elsif a < 0 
			puts "Please try again, that number is too low"
			a = gets.chomp.to_i
		break
	
	puts "Here is the board now that you've made your move"
	
	board[a-1] = "X"
	
	# places the string "X" at position a - 1
	# prints the new board


puts " #{board[0]} | #{board[1]} | #{board[2]} "
# print a string. This places the first, second and third array values in each position 

puts "----------"
# this is a visual divider before the 2nd coloumn

puts " #{board[3]} | #{board[4]} | #{board[5]} "
# print a string. This places the fourth, fifth and sixth array values in each position

puts "----------"
# this is a visual divider before the 3nd coloumn

puts " #{board[6]} | #{board[7]} | #{board[8]} "
# print a string. This places the seventh, eighth and ninth array values in each position

	#call the haswon? method to check if win conditions are met
  	counter = counter + 1 
	

    if counter.even? == false  #checks if it's O's turn
      puts "Player " + "O" + "'s turn, please enter a board position between 1 and 9"
	  
      a = gets.chomp.to_i
	  puts "You've entered " + a.to_s
	  
		if a > 9 
		puts "Please try again, that number is too high"		
		elsif a < 0 
		  puts "Please try again, that number is too low"
		break
	end	
		
	board[a-1] = "O"

	# places the string "O" at position a - 1
	# prints the new board
	
	end
	
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      # print a string. This places the first, second and third array values in each position 

      puts "----------"
      # this is a visual divider before the 2nd coloumn

      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      # print a string. This places the fourth, fifth and sixth array values in each position

      puts "----------"
      # this is a visual divider before the 3nd coloumn

      puts " #{board[6]} | #{board[7]} | #{board[8]} "
      # print a string. This places the seventh, eighth and ninth array values in each position

    counter = counter + 1
end

