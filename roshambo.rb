class Roshambo
  def initialize (name)
    @choices = ["Rock", "Paper", "Scissors"]
    @e_win = @e_loss = @e_draw = 0
    @b_win = @b_loss = 0
    @name = name
  end

  def game
    until @b_loss == 2 || @b_win == 2
      comp_choice = @choices.sample
    #  puts comp_choice     # CHEAT MODE!!! SHOWING ANSWER"
      begin
        puts "\nChoose Rock 👊🏼   Paper ✋🏻   or Scissors ✌🏼"
        user_choice = gets.chomp.capitalize
      end until @choices.include?(user_choice)
      puts "\n \n~~~~~~~~~~~~~~GAME~~~~~~~~~~~~~~"
      puts "   #{@name}    VS    COMPUTER \n   #{user_choice}            #{comp_choice}\n\n"
      if user_choice == comp_choice
        @e_draw += 1
        puts "       >>>>>DRAW<<<<<"
        puts "\nWINS: #{@e_win} \nLOSSES: #{@e_loss} \nDRAWS: #{@e_draw}"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      elsif
        (user_choice == "Rock" && comp_choice == "Scissors" ||
        user_choice == "Paper" && comp_choice == "Rock" ||
        user_choice == "Scissors" && comp_choice == "Paper")
        @e_win += 1
        puts "    >>>>>GOOD ONE!<<<<<"
        puts "\nWINS: #{@e_win} \nLOSSES: #{@e_loss} \nDRAWS: #{@e_draw}"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      else
        @e_loss += 1
        puts " >>>>>OOPS! NOT THIS TIME...<<<<<"
        puts "\nWINS: #{@e_win} \nLOSSES: #{@e_loss} \nDRAWS: #{@e_draw}"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      end
      if @e_win == 2
        puts "\n-------------------------"
        puts "NICE! YOU WON 2 OUT OF 3!!"
        puts "-------------------------\n"
        @e_win = @e_loss = @e_draw = 0
        @b_win += 1
      elsif @e_loss == 2
        @e_win = @e_loss = @e_draw = 0
        @b_loss += 1
        puts "\n-------------------------"
        puts "YOU LOST 2 OUT OF 3..."
        puts "-------------------------\n"
      end
      if @b_win == 2
        puts "\n======================================"
        puts "CONGRATULATIONS, YOU ARE THE WINNER!! \n\nWINS: #{@b_win} \nLOSSES: #{@b_loss}"
        puts "======================================\n"
      elsif @b_loss == 2
        puts "\n======================================"
        puts "NOT TODAY BUDDY, YOU LOST!! \nWINS: #{@b_win} \nLOSSES: #{@b_loss}"
        puts "======================================\n"
      end
    end
  end
end

puts "Player's name:"
name = gets.chomp.upcase
if name.empty?
  puts "No name, no game!"
  exit
end

multi_play = ["Y", "N"]
play_again = "Y"
while play_again == "Y"
  roshambo = Roshambo.new(name)
  roshambo.game
  begin
    puts "Want to play again? Y/N"
    play_again = gets.chomp.upcase
  end until multi_play.include?(play_again)
end
