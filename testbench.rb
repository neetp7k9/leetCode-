#!/usr/bin/ruby
require "./list.rb"
require ARGV[0]

head = makeList [9,8,0,3,4,2,1]
printList head
printList insertion_sort_list(head)
printList head
