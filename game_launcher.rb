require_relative 'game_handler'
require_relative 'board'



class Game_launcher

	def  initialize
		system("clear")
		puts "Game Started"
		puts
	end

	def game_menu
	 	puts"Press 1 for Play"
	 	puts"Press 2 for exit"
	 	input_method
	end

	def input_method
	 	choice=gets.to_i
	 	game_status_check choice
	end

	def game_status_check choice
		if choice==1
			get_player_name

		else
			abort("Game Ended")
		end
	end

	def get_player_name 
		print "Enter the name of the Player 1 : "
		@name_of_player1=gets
		print "Enter the name of the Player 2 : "
		@name_of_player2=gets
		get_size_of_the_board
	end

	def get_size_of_the_board
		puts "Enter the Size of the Board for TIC TAC TOE"
		n=gets.to_i
		p=Game_handler.new n, @name_of_player1, @name_of_player2
		p.turn_input
	end

end

p=Game_launcher.new
p.game_menu
