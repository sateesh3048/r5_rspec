class Stack
  attr_accessor :stack_ary, :size
  def initialize(size=10)
    @stack_ary = []
    @size = size
  end

  def push(item)
    return "Sorry stack is full" if @stack_ary.size == size
    @stack_ary.push(item)
  end
  
  def pop
    return "No items found in stack" if @stack_ary.length == 0
    stack_ary.pop
  end
  
  def peek
    return "Sorry no items found in stack" if @stack_ary.length == 0
    @stack_ary[@stack_ary.length-1]
  end

end
=begin
@stack = Stack.new
@stack.push 10
@stack.push 20
puts "#peek"
puts @stack.peek
@stack.push 30
puts "#peek"
puts @stack.peek
puts "#pop"
puts @stack.pop
puts "#peek"
puts @stack.peek
=end