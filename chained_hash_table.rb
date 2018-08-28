require_relative "./LinkedLists/singly_linked_list_with_key"

class HashTable

	def initialize(size: 100)
		@size = size
		@array = Array.new(size)
	end

	def add(key, value)
		#hash the key
		hashedkey = hashingfunction(key)
		if @array[hashedkey] == nil #if the index is empty, create a new linkedlist with a new node
			@array[hashedkey] = List.new()
			puts(@array[hashedkey])
			@array[hashedkey].append(hashedkey, value)
		else
			@array[hashedkey].append(hashedkey, value)
		end
	end

	def hashingfunction(key)
		key % size
	end

	def size()
		@size
	end

	def array()
		@array
	end

end

