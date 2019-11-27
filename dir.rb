#!/usr/bin/ruby

require 'pp'

def nav(pwd)
  Dir.foreach(pwd) do |x|
    if File.directory?(pwd+"/"+x)
      if x != "." && x != ".."
        nav(pwd+"/"+x)
      end
    else
      if File.executable?(pwd+"/"+x) && File.stat(pwd+"/"+x).uid == 0
        puts x
      end
    end
  end
end

if ARGV.count != 1
  puts "ne marche pas"
  exit
end

chemin = ARGV[0]

#recherche Dir.glob

nav(chemin)
