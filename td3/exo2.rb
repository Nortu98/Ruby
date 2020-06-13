#!/usr/bin/ruby

require 'pp'
require 'fileutils'

if ARGV.count < 2
  puts "ne marche pas"
  exit
end

#récupérer l'argument 1 Fe FE File
# séparer les 2 lettres
fe = ARGV[0]
f = fe[0]
e = fe[1]

(1...ARGV.count).each do |i|

  if File.exist?(ARGV[i].to_s)
    basename = File.basename(ARGV[i].to_s, ".*")
    extname = File.extname(ARGV[i].to_s)
    dirname = File.dirname(ARGV[i].to_s)+File::SEPARATOR
    if f == "f"
      basename2 = basename.downcase
    else
      basename2 = basename.upcase
    end
    if e == "e"
      extname2 = extname.downcase
    else
      extname2 = extname.upcase
    end
    oldfile = dirname+basename+extname
    newfile = dirname+basename2+extname2
    if oldfile != newfile
      FileUtils.mv(oldfile, newfile, :verbose => true)
    end
  else
    puts "le fichier #{ARGV[i]} n'exist pas"
  end
end
