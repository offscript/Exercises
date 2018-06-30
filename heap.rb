module HeapHelp

	def parent(i)
		return i/2
	end

	def left(i)
		return 2*i
	end

	def right(i)
		return 2*i + 1
	end
	
end

class Heap 
	include HeapHelp

	attr_accessor :size, :array

	def initialize(array)
		@array = array
		@size = array.length
	end

	def max_heapify(i)
		l = left(i)
		r = right(i)


		if l < @size && @array[l] > @array[i]
			largest = l
		else
			largest = i
		end

		if r < @size && @array[r] > @array[largest]
			largest = r
		end

		if largest != i
			#switch numbers
			hold_this = @array[largest]
			@array[largest] = @array[i]
			@array[i] = hold_this
			max_heapify(largest)
		end
	end

	def build_max_heap()
		a = @size/2
		for i in (a).downto(0)
			puts "hi"
			puts i
			max_heapify(i)
		end
	end

	def heapsort
		build_max_heap
		for i in (@size - 1).downto(1)
			hold_this = @array[0]
			@array[0] = @array[i]
			@array[i] = hold_this
			@size = @size - 1
			max_heapify(0)
		end
	end

end

include HeapHelp

my_array = [6,2,7,4,5]
my_heap = Heap.new(my_array)
my_heap.build_max_heap
my_heap.heapsort
puts my_heap.array

