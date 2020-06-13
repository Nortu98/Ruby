#!/usr/bin/ruby


require 'wikipedia'

Wikipedia.configure {
  domain 'fr.wikipedia.org'
  path   'w/api.php'
}

if ARGV.count != 1
  puts "ne marche pas"
  exit
end

page = Wikipedia.find( ARGV[0] )
puts page.title
puts page.summary
puts "Nombre image : #{page.images.length}"
