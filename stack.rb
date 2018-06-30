class Stack
	attr_accessor :head, :array

	def initialize()
		@array = Array.new
		@head = -1
	end

	def print()
		puts(@array[0])
	end

	def push(data)
		@array[@head+1] = data
		@head = @head + 1
	end

	def pop()
		@array.delete_at(@head)
	end

	def stack_empty?()
		@array[0] == nil ? (return true) : (return false)
	end

end
