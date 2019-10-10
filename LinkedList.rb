# class LinkedList
#   def initialize
#     @head = nil
#     @tail = nil
#   end

#   def push(value)
#      new_node = Node.new(value)

#   end
# end

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list)

  while list != nil
      new_list = Node.new(list.value, new_list)
      list = list.next_node
  end
  return new_list

end

class Stack
  attr_reader :head

  def initialize
    @head = nil
  end

  # Push a value onto the stack
  def push(value)
    @head = Node.new(value, @head)
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    return nil if @head == nil
    res = @head
    @head = @head.next_node
    return res.value
  end

  def empty?
    return (@head == nil)
  end
  
  def tolist
    @head
  end
end



def reverse_list_stack(list)
  new_stack = Stack.new
  while list != nil
    new_stack.push(list.value)
    list = list.next_node
  end 
  return new_stack.head
end

# puts "Test input"
# input = Node.new(1)
# input2 = Node.new(2)
# input3 = Node.new(3)
# input2.next_node = input3
# input.next_node = input2
# print_values(input)


puts "1. Reverse_list method1"

node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)
print_values(node3)

puts "-------"
revlist = reverse_list(node3)
print_values(revlist)

puts "2. Reverse_list method using stack"

print_values(node3)
puts "-------"
revlist_using_stack = reverse_list_stack(node3)
print_values(revlist_using_stack)

