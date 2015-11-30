#!/usr/bin/ruby
require "./list.rb"
require ARGV[0]

head = makeList [1,2,2,1]
printList head
puts is_palindrome(head)
