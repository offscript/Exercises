class AdjacencyList
	attr_accessor :array, :array_position


	def initialize(size) #put the size of the desired list here, total number of vertices
		@array = Array.new(size)
		@array_position = 0
	end

	def add(vertex)
		@array[@array_position] = vertex
		@array_position = @array_position + 1
	end

	def BFS(vertex)
		search_array = Array.new(@array.length)
		for i in 0..@array.length
			if array[i] = vertex
				search_array[i] = {:color => "grey", :distance => 0, 
					:predecessor => nil}
			else 
				search_array[i] = {:color => "white", :distance => 0, 
					:predecessor => nil}
			end
		end	

		q = Queue.new 
		q << vertex
		while q.empty? != true
			u = q.pop #check this 
			u.adjacent_vertices.each do |i|
				if search_array[i][:color] == "white"
					search_array[i][:color] = "grey"
					search_array[i][:distance] = search_array[i][:distance] + 1
					search_array[i][:predecessor] = u
					q << @array[i]
				end
				search_array[???][:color] = black 
			end
		end
	end

end

class Vertex
	attr_accessor :adjacent_vertices

	def initialize(data, adjacent_vertices)
		@data = data
		@adjacent_vertices = adjacent_vertices
	end
end

list = AdjacencyList.new(10)
vertex0 = Vertex.new("thomas", [1,2])
vertex1 = Vertex.new("mara", [0,3,7])
vertex2 = Vertex.new("amy", [0,3,4])
vertex3 = Vertex.new("john", [1,2,5,6])
vertex4 = Vertex.new("thomas", [2,5])
vertex5 = Vertex.new("jean", [3,4,8])

