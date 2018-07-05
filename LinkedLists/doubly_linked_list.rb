class DoublyLinkedList 

	attr_accessor :head, :tail

	def initialize()
		@head = nil
		@tail = nil
	end

	def append(data)
		node = Node.new(data)
		if head == nil
			@head = node
			@tail = node
		else
			node.previous = @tail
			@tail.next = node
			@tail = node
		end
	end

	def prepend(data)
		node = Node.new(data)
		if head == nil
			append(node)
		else
			@head.previous = node
			node.next = @head
			@head = node
		end
	end

	def search(key)
		node = @head
		puts node 
		while node != @tail
			if node.data == key
				return node
			else
				puts node.data 
				node = node.next 
			end
		end
		if node.data == key 
			return node
		else
			puts "not found"
		end
	end

	def delete(key) #remember the edge cases, of head and tail
		if self.search(key) != nil
			node = self.search(key)
			if node == @tail 
				@tail = node.previous
				node.previous.next = nil
			elsif node == @head 
				@head = node.next
				node.next.previous = nil
			else				
				node.previous.next = node.next
				node.next.previous = node.previous
			end
		else
			puts "not found"
		end
	end 

	class Node 
		attr_accessor :previous, :next, :data

		def initialize(data)
			@data = data
			@previous = nil
			@next = nil
		end
	end
end

