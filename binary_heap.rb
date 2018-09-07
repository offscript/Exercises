class Heap

	Negative_Infinity = -1.0/0.0

	def initialize(size = 11)
		@array = Array.new(size) #Create a new array of the size given or of a default size 11
		@current = 1 #Since we don't use the first index of the array, for our purposes the array is of length 10
		@array[@current] = Negative_Infinity
	end

	def insert(num)
		@array[@current] = num
		reheapify(@current)
		@current = find_next_current(@current)
	end

	#For testing purposes, give back the array.
	def array()
		@array
	end

	#takes the index of a given value
	def reheapify(given_value)
		if parent(given_value) != 0
			if @array[given_value] > @array[parent(given_value)] #This is will not 
#attempt to reheapify on the root as parent() will return 0 if given 1/2. Otherwise, if the child is larger than the parent
#reheapify will run, then call itself again.
			hold_parent = @array[parent(given_value)]
			@array[parent(given_value)] = @array[given_value]
			@array[given_value] = hold_parent
			reheapify(parent(given_value))
			end
		end
	end

	def floatdown(parent)
		if @array[left(parent)] != nil && @array[right(parent)] == nil
			floatdown_helper(left(parent))
		elsif @array[left(parent)] == nil && @array[right(parent)] != nil
			floatdown_helper(right(parent))
		elsif @array[left(parent)] == nil && @array[right(parent)] == nil
			@array[parent] = nil
			@current = parent
			puts("welcome to the bottom")
		elsif @array[left(parent)] > @array[right(parent)]
			floatdown_helper(left(parent))
		else
			floatdown_helper(right(parent))
		end
	end

	def floatdown_helper(given_value)
		hold_parent = @array[parent(given_value)]
		@array[parent(given_value)] = @array[given_value]
		@array[given_value] = hold_parent
		floatdown(given_value)
	end

	def removeMax()
		max = @array[1]
		@array[1] = Integer::MIN #set the root to.... negative infinity/the smallest possible number in the natural order
		#@current = @current - 1 #decrememnt current as there's one less item in the array
		floatdown(1)
		return max 
	end

	def search()

	end

	#Helper methods

	def parent(num)
		num/2
	end

	def right(num)
		(num*2) + 1
	end

	def left(num)
		(num*2)
	end

	def find_next_current(last_current)
		if @array[last_current] != nil
			last_current = find_next_current(last_current + 1)
		end
			return last_current
	end

class Integer
  N_BYTES = [42].pack('i').size
  N_BITS = N_BYTES * 8
  MAX = 2 ** (N_BITS - 2) - 1
  MIN = -MAX - 1
end

end