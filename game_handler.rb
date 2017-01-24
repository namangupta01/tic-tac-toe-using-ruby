require_relative 'board'
class Game_handler
	def initialize n,name1, name2
		@b=Board.new n, name1, name2
		@total_moves=n*n
		@size=n
		@turn=1
		@arr = []
		@arr[n-1]=nil
		for i in 0..n-1 
			@arr[i]=[]
			@arr[i][n-1]=5
		end
	end
	def turn_input
		while @total_moves>0
			if @turn%2==1
				puts
				puts "First player This is your turn"
				puts "Enter the row"
				@row=gets.to_i
				puts "Enter the column"
				@column=gets.to_i
				check_player_input
				@arr[@row-1][@column-1]=1
			else
				puts
				puts "Second player This is your turn"
				puts "Enter the row"
				@row=gets.to_i
				puts "Enter the column"
				@column=gets.to_i
				check_player_input
				@arr[@row-1][@column-1]=0
			end
	 		@b.print_board @arr , @size
			@b.check_status @arr, @size-1 , @row-1 , @column-1 , @turn	
			@turn=@turn+1
			@total_moves=@total_moves-1
		end
			
	end

	 def check_player_input
	 		if @row>@size || @row<1 || @column>@size || @column<1
	 			puts
	 			puts "Invalid Move, Out Of Range!!!!"
					puts "Please, Try Again"
					puts
					puts "Enter the row"
					@row=gets.to_i
					puts "Enter the column"
					@column=gets.to_i
					check_player_input
	 		elsif @arr[@row-1][@column-1]==1 || @arr[@row-1][@column-1]==0
	 				puts
					puts "Invalid Move!!!!"
					puts "Please, Try Again"
					puts
					puts "Enter the row"
					@row=gets.to_i
					puts "Enter the column"
					@column=gets.to_i
					check_player_input
			else
			end
	 end

end