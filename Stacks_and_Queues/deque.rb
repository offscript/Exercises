=begin

Whereas a stack allows insertion and deletion of elements at only one end, 
and a queue allows insertion at one end and deletion at the other end, 
a deque (double- ended queue) allows insertion and deletion at both ends. 
Write four O(1)-time procedures to insert elements into and delete elements 
from both ends of a deque implemented by an array.

Preliminary Thoughts: It looks like this array would need to dynamically
resize when inserting data into the front queue would overwrite data in the
the backqueue. As of right now, I don't know how to dynamically resize this 
array.

=end

class Deque

	def initialize
		@array = Array.new(10)
		@head = 0
		@tail = -1 
	end
	
	def front_insert(data)
		#check to see if back queue data is being overwritten, if so resize, if not
		#do the following
		@array[@head] = data
		@head = @head + 1
	end

	def front_delete
		#check for underflow
		@head = @head - 1
		@array.delete_at(@head)
	end

	def back_insert(data)
		@array[@tail] = data
		@tail = @tail - 1
	end

	def back_delete
		@tail = @tail + 1
		@array.delete_at(@tail)
	end

	def front_underflow?
		@head - 1 > 0 ? (return true) : (return false)
	end

	def back_underflow?
		@tail + 1 < 0 ? (return true) : (return false)
	end

end
