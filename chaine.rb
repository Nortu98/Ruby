#!/usr/bin/ruby -w

puts "Entrer une chaîne de charactère:"
chaine = gets.strip

puts "La longueur de la chaine est #{chaine.length}"
puts "La chaine en MAJUSCULE est #{chaine.upcase}"
puts "La chaine en minuscule est #{chaine.downcase}"

if chaine.length >= 3
  puts "Le troisième caractère de la chaîne est le caractère #{chaine[2]}"
end
