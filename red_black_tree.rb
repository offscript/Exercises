class RedBlackTree

	class RedBlackTreeNode

		def initialize(key, value, color)
			@key = key
			@value = value
			@color = nil
			@right = nil
			@left = nil
		end

	end

	def initialize(key) 
		@root = RedBlackTreeNode.new(key)
	end

	def insert() 

	end
end