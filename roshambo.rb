e_win = e_loss = e_draw = 0
b_win = b_loss = b_draw = 0
m_win = m_loss = m_draw = 0

@e_win = e_win
@e_loss = e_loss
@e_draw = e_draw

@b_win = b_win
@b_loss = b_loss
@b_draw = b_draw

@m_win = b_win
@m_loss = b_loss
@m_draw = b_draw


def get_name
  puts "Player's name:"
  name = gets.chomp.upcase
  @name = name
  if name.empty?
    puts "No name, no game!"
    exit
  end
end

def engagement
  until @m_win == 1 || @m_loss == 1 || @m_win == 1
    until @b_win == 2 || @b_loss == 2
      until @e_win == 2 || @e_loss == 2
        comp_choice = ["Rock", "Paper", "Scissors"].sample
        puts comp_choice
        puts "Choose rock, paper, or scissors."
        user_choice = gets.chomp.capitalize
        puts "~~~~~~~~~~~~~~GAME~~~~~~~~~~~~~~"
        puts "   #{@name}    VS    COMPUTER \n   #{user_choice}            #{comp_choice}\n\n"
          if user_choice == comp_choice
            puts "    >>>>>ENGAGEMENT DRAW<<<<<"
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            @e_draw += 1
          elsif
            (user_choice == "Rock" && comp_choice == "Scissors" ||
            user_choice == "Paper" && comp_choice == "Rock" ||
            user_choice == "Scissors" && comp_choice == "Paper")
            puts "    >>>>>ENGAGEMENT WON!<<<<<"
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            @e_win += 1
          else
            puts "    >>>>>ENGAGEMENT LOST<<<<<"
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            @e_loss += 1
          end
        end
        if @e_win == 2
          puts "BOUT WON!!"
          @b_win += 1
        elsif @e_loss == 2
          puts "BOUT LOST"
          @b_loss += 1
        elsif @e_draw == 2
          puts "BOUT DRAW"
          @b_draw += 1
        end
      end
    if @b_win == 2
      puts "MATCH WON"
      @m_win += 1
    elsif @b_loss == 2
      puts "MATCH LOST"
      @m_win += 1
    elsif @b_draw == 2
      puts "MATCH DRAW"
      @m_win += 1
    end
  end
end

get_name
engagement
