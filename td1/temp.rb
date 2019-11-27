#!/usr/bin/ruby

require 'pp'




tabtemp = []

IO.readlines('temp.txt').each do |line|
  tabtemp << line.to_f
end

pp tabtemp

puts tabtemp.min
puts tabtemp.max

somme = tabtemp.reduce(1) { |val, n|  val + n }
puts somme/tabtemp.length
