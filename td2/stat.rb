#!/usr/bin/ruby

require 'pp'

if ARGV.length !=1
  puts "Usage: #{$0} <fichier de log Web>"
  exit
end

nbRequete = 0
nbDonnes = 0

listMachine = {}
listFichier = {}

IO.readlines(ARGV[0]).each do |l|
  if l =~ /^([^ ]*) - - [^ ]* [^ ]* [^ ]* ([^? ]*)[^ ]* [^ ]* [^ ]* ([^ ]*)$/
    nbRequete += 1
    if $3 != "-"
      nbDonnes += $3.to_i
    end
    if !listMachine.has_key?($1)
      listMachine[$1] = 1
    end
    if listFichier.has_key?($2)
      listFichier[$2]+=1
    else
      listFichier[$2] = 1
    end
  end
end

puts "Nombre de requetes : #{nbRequete}"
puts "Nombre de données : #{nbDonnes}"
listMachine.each { |k , v| puts "#{k}"}

listFichier = listFichier.sort_by {|k, v| k}

0.upto(4) do |i|
  puts "#{listFichier[i][0]} : #{listFichier[i][1]}"
end
