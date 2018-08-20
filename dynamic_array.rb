class DynamicArray
	
	def initialize(capacity)
		@current_length = 0 #the current size of the array
		@array = Array.new(capacity) #intialize an array of capacity capacity
	end

	def insert(item)
		resize(getCapacity()*2) if @current_length + 1 > getCapacity()
		@array[@current_length+= 1] = item
	end

	def delete()
		item = @array[--@current_length]
		@array[@current_length] = null
		resize(getCapacity()/2) if getSize() - 1 < getCapacity()/4
		return item
	end

	def resize(new_max)
		temp = Array.new(new_max)
		for i in 0..@current_length
			temp[i] = @array[i]
		end
		@array = temp
	end

	def return_at_index(index1)
		return @array[index1]
	end

	def replaceAt(index1, item)
		@array[index1] = item
	end

	def getSize()
		return @current_length
	end

	def getCapacity()
		return @array.length
	end
end