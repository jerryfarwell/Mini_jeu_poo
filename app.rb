require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new
player1.name = "josé"
player1.points = 10
player1.show_state = "#{player1.name} a #{player1.points} points de vie."

player2 = Player.new
player2.name = "josiane"
player2.points = 10
player2.show_state = "#{player2.name} a #{player2.points} points de vie."


while player1.points > 0 && player2.points > 0
    puts "voici l'état des joueurs :"
    puts ""
    puts player1.show_state
    puts player2.show_state
puts ""
puts "Passons à la phase d'attaque :"
puts ""
player1.attacks(player2)
          if player2.points <= 0
          end
          puts ""
      if player2.attacks(player1)
      end
      puts
      break

end

binding.pry