#!/usr/bin/ruby

require 'pp'

def decal(h,m,s,ms,decal)
  t = Time.mktime(1,"jan",1,h,m,s,ms*1000)+decal
  t.strftime('%H:%M:%S,%L')
end

delta_sec = 8.1

fichier1 = "test.srt"
fichier2 = file = File.new("test2.srt","w")
IO.readlines(fichier1).each do |l|
  if l =~ /^(\d\d):(\d\d):(\d\d),(\d\d\d) --> (\d\d):(\d\d):(\d\d),(\d\d\d)$/
    fichier2 << decal($1.to_i,$2.to_i,$3.to_i,$4.to_i,delta_sec)+" --> "+decal($5.to_i,$6.to_i,$7.to_i,$8.to_i,delta_sec)+"\n"
    else
    fichier2 << l
  end
end
