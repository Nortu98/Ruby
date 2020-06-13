#!/usr/bin/ruby

tmp = Tempfile.new(tmp)
tmp.write(0)
tmpfile.close

2.times do |i|
  fork do
    i.step(1000, 2) do |n|
      puts "fils #{Process.pid} : #{n}"
    end
  end
end
puts("père #{Process.pid}")
