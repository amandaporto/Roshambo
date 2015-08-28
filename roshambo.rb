
def match
  puts "Player's name:"
  name = gets.chomp.upcase
  @name = name
  if name.empty?
    puts "No name, no game!"
    exit
  end
end
match

puts "Rock, paper, or scissors?"
user_choice = gets.chomp.capitalize
puts "#{@name}'S CHOICE: #{user_choice}"
comp_choice = ["Rock", "Paper", "Scissors"].sample
puts "COMPUTER CHOICE: #{comp_choice}"




# IDEAS
# Design around both choices???
#
#
