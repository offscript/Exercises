class DynamicArray
	
	def initialize(capacity)
		@capacity = capacity #the total capacity for the array
		@current_length = 0 #the current size of the array
		@array = Array.new(capacity) #intialize an array of capacity capacity
	end

	def add(object)
		if @current_length == @capacity
			puts "expanding!"
			@capacity = @capacity*2
			old_array = @array
			@array = Array.new(@capacity)
			old_array.each_with_index do |val, index|
				@array[index] = val
			end
			@array[@current_length] = object
			@current_length = @current_length + 1
		else
			@array[@current_length] = object
			@current_length = @current_length + 1
		end
	end

	def index(index)
		return @array[index]
	end

	def replaceAt(index, object)
		@array[index] = object
	end

	def searchFor(object)
	end
end

