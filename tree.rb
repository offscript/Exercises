	class TreeNode
		attr_accessor :key, :data, :parent, :right_child, :left_child
		start_key = 0

		def initialize (data, key)
			@data = data
			if key == nil
				@key = start_key 
				start_key = start_key + 1
			else
				@key = key
			end
		end
	end


	class Tree 

		attr_accessor :root

		def initialize()
			@root = nil
		end

		def in_order_tree_walk(node)
			if node != nil
				in_order_tree_walk(node.left_child)
				puts node.key
				in_order_tree_walk(node.right_child)
			end
		end

		def tree_search(root, k)
			if root.key == nil || k==root.key
				return root
			end
			if root.key < k
				return tree_search(root.left_child, k)
			else
				return tree_search(root.right_child, k)
			end
		end

		def tree_minimum(root)
			while root.left_child != nil
				root = root.left_child
			end
			return root.key
		end

		def tree_maximum(root)
			while root.right_child != nil
				root = root.right_child
			end
			return root.key
		end


		def tree_successor(node)
			#case 1, there is a right child. If there is a right child, the next
			#key is the smallest key in the right subchild's branch.
			return tree_minimum(node) if node.right != nil 
			y = node.parent
			while y != nil && x.key == y.right
				x = y 
				y = y.parent
			end
			return y
		end

		def tree_insert(node)
			y = nil 
			x = @root
			while x != nil
				y = x
				if node.key < x.key 
					x = x.left_child
				else
					x = x.right_child
				end
			node.parent = y
			end

			if y == nil
				@root = node
			elsif node.key < y.key
				y.left_child = node
			else
				y.right_child = node
			end
		end

		def transplant(f_root, nu_root) #f_root = former root, nu_root = new root
	#this is a purposeful pattern of trees, there are three cases here
	#the thing we seek to replace is the root, on the left, or on the right


			if f_root.parent == nil 
				root = nu_root 
			elsif f_root = f_root.parent.left_child
				f_root.parent.left_child = nu_root
			else
				f_root.parent.right_child = nu_root
			end
			f_root.parent = nu_root.parent if nu_root != nil
		end

		def tree_delete(node)
			if node.left_child == nil
				self.transplant(node, node.right_child)
			elsif node.right_child == nil
				self.transplant(node, node.left_child)
			else y = self.tree_minimum(z.right_child)
				if y.parent != node
					self.transplant(y, y.right_child)
					y.right_child = z.right_child
					y.right_child.parent = y
				end
				self.transplant(node,y)
				y.left_child = node.left_child
				y.left_child.parent = y
			end
		end				
	end

