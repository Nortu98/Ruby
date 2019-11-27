#!/usr/bin/ruby -w

tab_notes = []

for i in 1..10
  puts "Entrer une note:"
  tab_notes << gets.strip.to_f
end

puts "List des notes :"
moy = 0
for note in tab_notes.sort
  puts note
  moy = moy + note
end
moy = moy/10

puts "La moyenne des 10 note est #{moy}"
