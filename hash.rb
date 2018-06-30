class HashBrown
	attr_accessor :arr

	arr = []

	def initialize 
		@arr = Array.new(10)
	end

	def insert(key, someObject)
		@arr[key] = someObject
	end

	def delete(key)
		@arr[key] = null
	end

	def search (key)
		return @arr[key]
	end
end

class SomeObject
	attr_accessor :key, :data, :next

	def initialize (key, data)
		@key = key
		@data = data
		@next = nil
	end
end