class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def reverse_list(node)
    # ADD CODE HERE
    new_list = Node.new(nil)

    while node != nil
        # ADD CODE HERE
        new_list = Node.new(node.value, new_list)
        node = node.next_node
    end



    # ADD CODE HERE
    return new_list
end

def print_list(node)
  if node == nil
    puts nil
    return
  end
  puts node.value
  print_list(node.next_node)
end

# def print_values(list_node)
#   if list_node
#     print "#{list_node.value} --> "
#     print_values(list_node.next_node)
#   else
#     print "nil\n"
#     return
#   end
# end

class Stack
    attr_reader :head

    def initialize()
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
        # I RETURN A VALUE
        return nil if @head == nil
        res = @head
        @head = @head.next_node
        return res.value
    end

    

end

# node1 = Node.new(37)
# node2 = Node.new(99, node1)
# node3 = Node.new(12, node2)
# print_values(node3)
# stack = Stack.new(1)
# stack.push(2)
# p stack

stack = Stack.new

# Pushes (adds) the number 1 to the empty stack
stack.push(1)

# Pushes the number 2 to the TOP of the stack
stack.push(2)

# Pops (removes) the TOP number from the stack (2)
# puts stack.pop


# # Pops the remaining number from the stack (1)
# puts stack.pop

# # Tries to pop the TOP number from the stack,
# # but it is empty so it returns nil
# puts stack.pop

stack.push(3)


print_list(stack.head)

rev = reverse_list(stack.head)

print_list(rev)
