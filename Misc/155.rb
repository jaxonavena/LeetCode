class MinStack
    def initialize()
        @stack = []
        @min = []
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
        @stack.append(val)
        @min.append(val) if @min.empty? || val <= @min[-1]
    end


=begin
    :rtype: Void
=end
    def pop()
        target = @stack.pop
        @min.pop if get_min == target
    end


=begin
    :rtype: Integer
=end
    def top()
        @stack[-1]
    end


=begin
    :rtype: Integer
=end
    def get_min()
        @min[-1]
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
