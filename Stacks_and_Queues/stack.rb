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
		if (!stack_empty?())
			@array.delete_at(@head)
			@head = @head - 1
		else
			return ("Stack is empty")
		end
	end

	def stack_empty?()
		@array[0] == nil ? (return true) : (return false)
	end

end
