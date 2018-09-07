require "./LinkedLists/singly_linked_list_with_key.rb"

class AdjacencyList
=begin
	def initialize(vertices)
		@vertices = vertices
		@array = Array.new(vertices)
		for i in 0...vertices
			@array[i] = List.new()
		end
	end
=end

	def initialize(file)
		f = File.new(file)
		f.each do |line|
			#read the first two lines containing the number of vertices
			#and the number of edges
			@vertices = line if f.lineno == 1
			@edges = line if f.lineno == 2
			if f.lineno > 2
				puts("line number: #{f.lineno}")
				i = 0
				while f.readchar != ' '
					pairX = ''
					#pairY = ''
					puts("This is pairX: #{pairX}")
					puts("This is i: #{i}")
					puts("This is line number #{f.lineno}")
					puts("This is line: #{line}")
					puts("This is indexing the lineno property? #{f.lineno[0]}")
					puts("This is line space/char/whatever: #{line[i]}")
					pairX = pairX + line[i]
					puts(pairX)
					puts("exit")
				end
				#pairY = line[2]
				#only works for single digits smh
				#pairX = f.readchar if f.getc != ' '
				#pairY = f.readchar if f.getc != ' '
				#puts(pairX + " " + pairY)
			end
		end
	end

	def addToList(pairX, pairY)
		#on second pass do some error handling on pairs outside of the set
		@array[pairX].append(pairY)
	end

	def vertices
		@vertices
	end

	def edges
		@edges
	end


end
