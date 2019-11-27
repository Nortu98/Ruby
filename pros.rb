#!/usr/bin/ruby -w
puts  "Le nombre de processus est #{`ps -e | wc -l`.to_i - 1}"
