class String
	def red;            "\033[31m#{self}\033[0m" end
	def green;          "\033[32m#{self}\033[0m" end
	def blue;           "\033[34m#{self}\033[0m" end
	def bg_black;       "\033[40m#{self}\033[0m" end
	def bold;           "\033[1m#{self}\033[22m" end
end 

line_width = 75
print "\n"
puts ( "Hi welcome to the GNOME game".green.center(line_width))
print "\n"
print                   
print "         / \\             "
print "\n"        
print "        /   \\            "
print "\n"
print "       /     \\           "
print "\n"
print "      /_______\\          "
print "\n"
print "      // . . \\          "
print "\n"
print "     (/(__7__)\)         "
print "\n"
print "     |\'-\' = `-\'|      "
print "\n"
print "     |         |         "
print "\n"
print "     /\       /\\         "
print "\n"
print "    /  \'.   .\'  \\      "
print "\n"
print "   / /|  `\"`  |\ \\      "
print "\n"
print "   \\ \\|===LI==|/ /       "
print "\n"
print "    \\'-|_______|-\'      "
print "\n"
print "        |__|__|          "
print "\n"
print "        |--|--|          "
print "\n"
print "       (__)`(__)         "
print "\n"                                            
puts ("Press Enter to Continue".red.center(line_width))
print "\n"
reply = gets.chomp
Gnomes = Array.new 

def print_gnomes (array, position)
	n = 0

	while n < array.length
		if n == 0
			print "--------------".bold
			print "\n"
			if position == 0
				print "Next Gnome".bold
				print "\n"
			end
		end 

		

		if array[n] == 0
			
			print "red".red.bold
			print "\n"
		else 
			print "blue".blue.bold
			print "\n"
		
		end

		if n == position - 1
			print "Next GNOME".bold
			print "\n"
		end	

		if n == array.length-1
			print "---------------".bold
			print "\n"
		end 

		n+=1
	end
end


puts ("The cave gnomes have their foreheads painted red or blue,".center(line_width)) 
puts ("but they cannot see the color of their foreheads.".center(line_width))
puts ("They must sort themselves by color without communicating,".center(line_width))
puts ("as they leave the cave, one by one.".center(line_width))
puts ("PRESS ENTER".red.center(line_width))
puts "\n"
reply = gets.chomp
puts "\n"
line_width = 75
puts ("If you were the gnome exiting the cave, you would need to choose where to place".ljust(line_width)) 
puts ("yourself without knowing your color. In this game, the goal is for you to separate".ljust(line_width))
puts ("the gnomes by color, without knowing the color of the gnome as it exits the cave.".ljust(line_width))
puts ("If you sort 18 gnomes correctly, you win the game!!!".ljust(line_width))
puts ("PRESS ENTER".red.center(line_width))
puts "\n"

reply = gets.chomp
print "\n"

print "One gnome exits the cave"
print "\n"
Gnomes.insert(0,rand(2))
position = 0
print "\n"
print "'Next Gnome' shows the spot you choose to put the randomly generated gnome"
	print "\n"
	print "Type 'u' to put the next gnome in the spot above."
	print "\n"
	print "Type 'd' to put the next gnome in the spot below."
	print "\n"
	print "Press enter to finalize the spot, and add another gnome."
	print "\n"

while Gnomes.length < 20
	print_gnomes(Gnomes, position)

	input = gets.chomp
	
	if input == 'd'
		if position < Gnomes.length+1
			position += 1
		end
	end

	if input == 'u'
		if position > 0
			position -= 1
		end
	end
	
	if input == ''
		Gnomes.insert(position, rand(2))
	end

	if Gnomes.length == 19
		n = 1
		counter = 0
		while n < Gnomes.length
			if Gnomes[n] != Gnomes[n-1]
				counter +=1
			end
			n+=1
		end
		if counter == 1
			print "Congratulations, YOU WIN!!! you sorted the Gnomes!!!".green
			print "\n"
		else
			print "Sorry, the Gnomes are not sorted, please restart the game and try again".red
			print "\n"
		end
		break
	end
end

	#print "\n"
	#print rand(2)
	#print "\n"

	#print out situation
		#ask user for input
		#see if input valid
	#do it
	
	#print "Enter your move"




#1. def randgome()
#	arr << arr.rand(2)

#2. print array


#3. where you want to insert



#4. insert at that place


#5. back to beginning. 

#def gnome (arr, position)
	# ask what position.
	# see what position you want. 