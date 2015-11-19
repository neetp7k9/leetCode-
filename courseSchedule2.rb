#!/usr/bin/ruby
class Graph
    def initialize size
       @size = size
       @neighbor = Hash.new() {|h,k| h[k]=Array.new}
    end
    def setConnection node1, node2
        @neighbor[node1].push node2
    end
    def dfs root, sort_list
        return false if @color[root] == 1
        return true if @color[root] == 2
        @color[root] = 1
        @neighbor[root].each do |n|
            return false unless dfs n, sort_list
        end
        @color[root] = 2
        puts "push #{root}"
        sort_list.push root
        return true
    end
    def toSort
       @color = Array.new(@size) {0}
       list = []
       answer = []
       0.upto(@size-1) do |i|
           return answer unless dfs i, list
       end
       puts "list =#{list}"
       @color = Array.new(@size) {0}
       list.reverse.each do |i|
           
           dfs i, answer
       end
       return answer
    end
end
def find_order(num_courses, prerequisites)
    graph = Graph.new num_courses
    prerequisites.each do |rule|
       graph.setConnection rule[0], rule[1]
    end
    return graph.toSort
end
puts "#{find_order(4,[[1,2],[2,3]])}" 
