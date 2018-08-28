require_relative "dynamic_array"

class LinearProbeHT

	def init(size: 100)
		@size = size
		@key_array = DynamicArray.new(size)
		@value_array = DynamicArray.new(size)
	end

	def get(key)
		hashedkey = hasher(key)
		while @key_array[hashedkey] != nil
			if @key_array[hashedkey] == key
				return @value_array[hashedkey] 
			else
				hashedkey = hashedkey + 1
			end
		end
		return nil
	end

	def put(key, value)
		if (@key_array.getLength() == (@key_array.getCapacity()/2))
			@key_array.resize()
			@value_array.resize()
		end
		hashedkey = hasher(key)
		if @key_array[hashedkey] == nil
			@key_array[hashedkey] = key
			@value_array[hashedkey] = value
			@size = size + 1
		else
			while @key_array[hashedkey] != nil
				hashedkey = hashedkey + 1
			end
			@key_array[hashedkey] = key
			@value_array[hashedkey] = value
			@size = size + 1
		end
	end

	def hasher(key)
		return key % 13
	end

end
