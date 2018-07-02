class Qu 
	attr_accessor :array, :head, :tail

	def initialize
		@array = []
		@head = 0
		@tail = 0
	end

	def enqueue(data)
		@array[@tail] = data
		@tail = @tail + 1
	end

	def dequeue
		if (!is_empty?)
			hold_data = @array[@head]
			@array.delete_at(@head)
			@tail = @tail - 1
		else
			return ("Cant dequeue, Queue is empty")
		end
	end

	def is_full?
		#This function would prevent attempting to put data
		#beyond the limits of the array but that's not possible in ruby
	end

	def is_empty?
		@array[0] == nil ? (return true) : (return false)
	end
end

