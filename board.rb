class Board
	
	def initialize n, name1,name2
		@name_of_player1=name1
		@name_of_player2=name2
		for i in 0..n-1
			print "|"
			for j in 0..n-1
				print " |"
			end
			puts ""
		end
	end

	def print_board arr, size
		for i in 0...size
			print "|"
			for j in 0...size
				if arr[i][j]==0
				print "0|"
				elsif arr[i][j]==1
				print "1|"
				else 
				print " |"
				end
			end
			puts 
		end
	end

	def check_status arr, size, m, n, type
		type=type%2
		present_in_vertical=true
		present_in_horizontal=true
		present_in_diagonal=true
		for i in 0..size
			if arr[m][i] != type
				present_in_vertical=false
			end
			if arr[i][n] != type 
				present_in_horizontal=false
			end
			if arr[i][i] != type 
				present_in_diagonal=false
			end
		end
		if present_in_diagonal==true || present_in_horizontal==true || present_in_vertical==true
			if type==1
			print "#{@name_of_player1}wins" 
			else 
			print "#{@name_of_player2}wins"
			end
			puts
			abort("Game Ended")
		end
	end

end