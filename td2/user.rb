#!/usr/bin/ruby

IO.readlines("/etc/passwd").each do |l|
  if l =~ /^([^:]+)/
    puts $1
  end
end
