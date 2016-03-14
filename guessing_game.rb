class Guessing_game

    def welcome
      puts "Welcome to the guessing game!"
      puts "\n"
      puts "Pick any number between 0 and 100: "
      puts "\n"
      puts "what is your number?"
      player_guess
      random_guess
      game
    end

    def random_guess
      @random_number = rand(1..100)
    end

    def player_guess
      @player_number = gets.chomp.to_i
      puts " "
    end

    def game
      @counter = 0
      @same_number = []
      loop do
          if  @counter == 4
            puts "You have exceeded 5 guesses. You lost!"
            break
          elsif @same_number.include?(@player_number)
            puts "ARE YOU OK??? 🤔"
            @counter +=1
            @same_number.push(@player_number)
            player_guess
          elsif @random_number > @player_number
            puts "Number guessed is too low 😯"
            @counter +=1
            @same_number.push(@player_number)
            player_guess
         elsif @random_number < @player_number
            puts " Number guessed is too high 🙄"
            @counter +=1
            @same_number.push(@player_number)
            player_guess
          else
            puts "you got it! 🙏"
            puts "It took you #{@counter} of guesses."
          exit
          end
      end
    end
end

Guessing_game.new.welcome
