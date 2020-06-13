#!/usr/bin/ruby -w

require 'open-uri'

# get twitter followers by twitter handle
def twitter(username)
  page = open("https://twitter.com/#{username}").read
  followers = page.scan(/ProfileNav-item--followers">\s* <[^>]+>\s*<[^>]+>[^<]*<[^>]+>\s*<[^>]+>[^<]*<[^>]+>\s*<[^>]+>([0-9]+)<[^>]+>/).flatten.first
  puts "Twitter : #{followers} Followers"
end

# twitter handle
print 'Quel pseudo : '
twitter gets.chomp
