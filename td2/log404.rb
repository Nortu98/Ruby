#!/usr/bin/ruby
nb = 0
IO.readlines('log.txt').each do |l|
  if l =~ /" 404/
    puts l
    nb += 1
  end
end

puts nb
