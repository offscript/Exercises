require_relative "stack"
require 'test/unit'

class TestStack < Test::Unit::TestCase

	def setup
		@test_stack = Stack.new()
		@test_stack.push(2)
	end

	def test_simple
		assert_equal(2, @test_stack.array[0])
	end

	def test_push
		@test_stack.push("a")
		@test_stack.push(3.14)
		@test_stack.push([1,2,3,4])
		assert_equal([1,2,3,4], @test_stack.array[@test_stack.head])
		@test_stack.array = []
	end

	def test_pop
		@test_stack.array = [2, "a", 3.14, [1,2,3,4]]
		@test_stack.pop
		@test_stack.pop
		@test_stack.pop
		assert_equal(nil, @test_stack.array[@test_stack.head])
	end

	def test_prevent_underflow
		@test_stack.push(2)
		@test_stack.pop
		@test_stack.pop
		assert_equal("Stack is empty", @test_stack.pop)
	end

end