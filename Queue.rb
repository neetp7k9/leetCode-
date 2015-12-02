class Queue
    # Initialize your data structure here.
    def initialize
        @stack = []
        @stacktmp = []
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
        @stack.push x
    end

    # @return {void}
    def pop
        while @stack.length > 0
            @stacktmp.push @stack.pop
        end
        x = @stacktmp.pop
        while @stacktmp.length > 0
            @stack.push @stacktmp.pop
        end
        return x
    end

    # @return {Integer}
    def peek
        while @stack.length > 0
            @stacktmp.push @stack.pop
        end
        x = @stacktmp.last
        while @stacktmp.length > 0
            @stack.push @stacktmp.pop
        end
        return x
    end

    # @return {Boolean}
    def empty
        @stack.length == 0
    end
end
