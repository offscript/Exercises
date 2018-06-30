class List

	attr_accessor :name, :head, :tail

	def initialize
		@head = nil
		@tail = nil
	end

	def append(data)
		node = LinkedListNode.new(data)
		if @head == nil 
			@head = node
			@tail = node
		else
			@tail.next = node
			@tail = node
		end
	end

	def prepend(data)
		node = LinkedListNode.new(data)
		if @head == nil 
			append(node)
		else
			node.next = @head
			@head = node
		end
	end

	def size
		node = @head
		i = 1
		while node != @tail
			i = i + 1
			node = node.next
		end
		puts i
	end


	def walk
		node = @head
		puts node.data
		while node != @tail
			puts node.next.data
			node = node.next
		end
	end

	def at(index)
		i = 0
		node = @head
		until i == index
			node = node.next
			i = i + 1
		end
		puts node.data
	end

	class LinkedListNode 

		attr_accessor :data, :next

		def initialize(data)
			@data = data
			@next = nil
		end
	end

end

list1 = List.new
list1.append("thomas")
list1.prepend("keating")
list1.prepend("donna")
list1.append("william")
list1.walk
list1.size
list1.at(3)


=begin 
For another time/review

#pop removes the last element from the list
#contains? returns true if the passed in value is in the list and otherwise returns false.
#find(data) returns the index of the node containing data, or nil if not found.
#to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil

=end

