#!/usr/bin/ruby
tab = []

if ARGV.count != 1
  puts "ne marche pas"
  exit
end

quota = ARGV[0].to_i

IO.readlines("/etc/passwd").each do |l|
  if l =~ /^([^:]+):x:[1-9]\d{3,}/
    nom = $1
    if l =~ /:(\/home\/[^:]+)/
      pwd = $1
      taille = `du -BK -s #{pwd}`.to_i
      if Dir.exist?($1)
        if taille < quota
          tab << "Je travaille sur #{nom} (de home #{pwd}): il ne dépasse pas (#{taille} ko)"
        else
          tab << "Je travaille sur #{nom} (de home #{pwd}): il dépasse (#{taille} ko)"
        end
      end
    end
  end
end

tab.sort!
tab.each { |v| puts v}
