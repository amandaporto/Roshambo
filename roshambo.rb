
def get_name
  puts "Player's name:"
  name = gets.chomp.upcase
  @name = name
  if name.empty?
    puts "No name, no game!"
    exit
  end
end
get_name

def engagement
  puts "Choose rock, paper, or scissors."
  user_choice = gets.chomp.capitalize
  puts "#{@name}'S CHOICE: #{user_choice}"
  comp_choice = ["Rock", "Paper", "Scissors"].sample
  puts "COMPUTER CHOICE: #{comp_choice}"
end




# IDEAS
# Design around both choices???
#
#
