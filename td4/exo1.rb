#!/usr/bin/ruby

if ARGV.count != 1
  puts "ne marche pas"
  exit
end

def time
  Time.now.strftime("%H:%M:%S,%6N")
end

nb_proc = ARGV[0].to_i

puts("#{time} je suis ton père #{Process.pid}")

1.upto(nb_proc) do
  fork do
    puts("#{time} fils #{Process.pid}")
  end
end

1.upto(nb_proc) do
  pid = Process.wait
  if $?.exitstatus == 0
    puts ("Mon fils #{pid} s'est bien terminé")
  else
    puts ("mon fils #{pid} s'est mal terminé")
  end
end

puts("#{time} père #{Process.pid}")
