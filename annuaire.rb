#!/usr/bin/ruby
require 'pp'

tab = {}

IO.readlines('annuaire.txt').each do |line|
  if line =~ /^([A-Za-z]*) : ([0-9]*)/
    tab [$1] = $2
  end
end

tab2 = tab.sort_by {|k, v| k}

tab2.each { |k , v| puts "#{k} : #{v}"}

if ARGV.count >= 1
  nom = ARGV[0]
  puts "Le numero de telephone de #{nom} est #{tab[nom]}" if tab.has_key?(nom)
end
