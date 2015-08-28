
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






# IDEAS
# Design around both choices???
#
#
