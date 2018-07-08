class Sentinel_dll
	attr_accessor :null, :tail 


	def initialize
		@null = Node.new(nil)
		@tail = @null
	end

	def insert(data)
		node = Node.new(data)
		node.next = @null.next
		@null.next.prev = node
		node.prev = @null
		@null.next = node
	end

	def delete

	end

	def search

	end

	class Node
		attr_accessor :next, :prev, :data

		def initialize(data)
			@next = nil
			@prev = nil
			@data = data
		end

	end

end