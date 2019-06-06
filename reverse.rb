class LinkedListNode
  attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
    
end

def print_values(node)
      if node
        print_values(node.next_node)
        print "#{node.value} --->"
         
       else
        print "nil\n"
        return 
      end
end   


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)