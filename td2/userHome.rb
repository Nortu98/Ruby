#!/usr/bin/ruby
tab = []

IO.readlines("/etc/passwd").each do |l|
  if l =~ /^([^:]+)/
    nom = $1
    if l =~ /:\/home/
      tab << nom+" ****** home dans /home ******"
    else
      tab << nom+" pas de home dans /home"
    end
  end
end

tab.sort!
tab.each { |v| puts v}
