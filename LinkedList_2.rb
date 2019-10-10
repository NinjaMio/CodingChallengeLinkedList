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

def reverse_list_mutation(list, previous=nil)
  
  current = list

  while current != nil
    nextnode = current.next_node  
    current.next_node = previous
    previous = current
    current = nextnode
  end

  return previous
end

def check_infinite(list)

  tortoise = list.next_node 
  hare = list.next_node
  
  while hare != nil
    return false if hare == nil
    hare = hare.next_node

    return  false if hare == nil
    hare = hare.next_node 
    tortoise = tortoise.next_node

    return true if hare == tortoise
  end
  return false
end



puts "1. Reverse_list method1"

node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)
node4 = Node.new(66, node3)
node5 = Node.new(88, node4)
node6 = Node.new(10, node5)
node7 = Node.new(1, node6)
node8 = Node.new(33, node7)
# node1.next_node = node6

print_values(node8)

puts "-------"
revlist = reverse_list(node8)
print_values(revlist)

puts "2. Reverse_list method using stack"

print_values(node8)
puts "-------"
revlist_using_stack = reverse_list_stack(node8)
print_values(revlist_using_stack)

puts "3. Reverse_list method using mutation"

print_values(node8)
puts "-------"
revlist_using_mutation = reverse_list_mutation(node8)
print_values(revlist_using_mutation)

puts "4. Check infinite"

print_values(revlist_using_mutation)
puts "-------"
test = check_infinite(revlist_using_mutation)
puts test

# test = check_infinite(node8)
# puts test



