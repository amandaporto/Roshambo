choices = ["Rock", "Paper", "Scissors"]
@choices = choices
e_win = e_loss = e_draw = 0
@e_win = e_win
@e_loss = e_loss
@e_draw = e_draw

b_win = b_loss = b_draw = 0
@b_win = b_win
@b_loss = b_loss
@b_draw = b_draw

def get_name
  puts "Player's name:"
  name = gets.chomp.upcase
  @name = name
  if name.empty?
    puts "No name, no game!"
    exit
  end
end

def game
  comp_choice = @choices.sample
#  puts comp_choice                         # CHEAT MODE!!! SHOWING ANSWER"
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

get_name
game until @b_loss == 2 || @b_win == 2
