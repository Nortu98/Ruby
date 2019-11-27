#!/usr/bin/ruby -w

note = 0
for i in 1..10
  puts "Entrer une note:"
  note = note + gets.strip.to_f
end
note = note/10
puts "La moyenne des 10 notes est #{note}"
