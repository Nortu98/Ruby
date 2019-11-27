#!/usr/bin/ruby -w
puts "entrer le nom d'utilisateur :"
user = gets.strip
puts `ps -u #{user}`
puts "L'utilisateur #{user} à #{`ps -u #{user} | wc -l`.to_i - 1}"
