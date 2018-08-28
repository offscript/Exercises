class List

	attr_accessor :name, :head, :tail

	def initialize
		@head = nil
		@tail = nil
	end

	def append(key, data)
		node = LinkedListNode.new(key, data)
		if @head == nil 
			@head = node
			@tail = node
		else
			@tail.next = node
			@tail = node
		end
	end

	def prepend(key, data)
		node = LinkedListNode.new(key, data)
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

	def search(data)
		node = @head
		while node != null
			if node.data = data
				return true
			else
				node = node.next
			end
		end
		return false
	end

	class LinkedListNode 

		attr_accessor :key, :data, :next

		def initialize(key, data)
			@key = key
			@data = data
			@next = nil
		end
	end

end