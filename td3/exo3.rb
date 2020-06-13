#!/usr/bin/ruby

#pacman -Qd pour avoir la liste des paquet sur arch

# pacman -Qi gnome-calculator pour plus d'info sur la paquege

if ARGV.count != 1
  puts "ne marche pas"
  exit
end

regex = Regexp.new(ARGV[0])

require 'pp'
list_package = `pacman -Q`

list_package.each_line do |line|
  if line =~ /^(\S*)/
    nom = $1
    info = `pacman -Qi #{nom} | grep ^Groupes`
    if info =~ /^Groupes *: (\S*)/
      if regex.match($1)
        puts nom
      end
    end
  end
end
