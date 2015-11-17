#!/usr/bin/ruby
# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
class Graph
    def initialize size
        @size = size
        @neighbor = Hash.new(){|h,k| h[k]=[]} 
    end
    def setConnection node1, node2
        @neighbor[node1].push node2
    end
    def dfs root
        puts "dfs #{root}"
        puts root
        return false if @color[root] == 1
        puts root
        @color[root] = 1
        @neighbor[root].each do |n|
            return false unless dfs n
        end
        @color[root] = 2
        return true
    end
    def acycle?
       @color = Array.new(@size) {0}
       0.upto(@size-1) do |i|
           return false unless dfs i
       end
       return true
    end
end
def can_finish(num_courses, prerequisites)
    graph = Graph.new num_courses
    prerequisites.each do |rule|
       graph.setConnection rule[0], rule[1]
    end
    return graph.acycle?
end
puts can_finish(2,[[1,0]])
