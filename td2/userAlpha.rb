#!/usr/bin/ruby
tab = []

IO.readlines("/etc/passwd").each do |l|
  if l =~ /^([^:]+):x:[1-9]\d{3,}/
    tab << $1
  end
end

tab.sort!
tab.each { |v| puts v}
