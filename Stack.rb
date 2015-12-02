class Stack
        # Initialize your data structure here.
    def initialize
        @queue = []
        @queuetmp = []
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
        @queue.push x
    end

    # @return {void}
    def pop
        while @queue.length > 0
            @queuetmp.push @queue.shift
        end
        x = @queuetmp.pop
        while @queuetmp.length > 0
            @queue.push @queuetmp.shift
        end
        return x
    end

    # @return {Integer}
    def top
        while @queue.length > 0
            @queuetmp.push @queue.shift
        end
        x = @queuetmp.last
        while @queuetmp.length > 0
            @queue.push @queuetmp.shift
        end
        return x
    end

    # @return {Boolean}
    def empty
        @queue.length == 0
    end
end
