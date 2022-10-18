require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts ""
puts "———————————————————————————————————————————————————"
puts "|    Bienvenue dans Le tounois des champions !    |"
puts "| Le but du jeu est d'être le dernier survivant ! |"
puts "———————————————————————————————————————————————————"
puts ""

puts "Choisi ton nom de Super-héro :"
print "> "
player = gets.chomp
username = HumanPlayer.new(player)
enemies = []

player1 = Player.new
player1.name = "josé"
player2 = Player.new
player2.name = "josiane"



while username.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
    puts ""
    puts "Voici l'état de ton joueur" 
    puts username.show_state
end


puts "Quelle action veux-tu effectuer ?"

puts "a - chercher une meilleure arme"
puts "s - chercher à se soigner"

puts "attaquer un joueur en vue :"
puts "0 - Josiane a 10 points de vie"
puts "1 - José a 10 points de vie"


if action == "a"
    username.search_weapon
    puts "chercher une meilleure arme"
    puts ""
  elsif action == "s"
    username.search_health_pack
    puts "chercher à se soigner"
    puts ""
  elsif action == "0"
    username.attacks(player1)
    puts ""
  elsif action == "1"
    username.attacks(player2)
    puts ""
  else
    puts "Erreur !"
    print " "
  end

  enemies.each do |player|
    if player.life_points > 0
      player.attacks(username)
    end
  end
  puts gets.chomp

  if username.life_points <= 0
      puts "LOSER ! Game Over !"
  elsif player1.life_points <= 0 && player2.life_points <= 0
      puts "BRAVO ! TU AS GAGNÉ !!"
  end

puts ""
puts "Fin du game"

binding.pry