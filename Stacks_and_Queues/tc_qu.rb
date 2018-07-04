require_relative "qu.rb"
require "test/unit"

class TestQu < Test::Unit::TestCase

	def setup
		@test_qu = Qu.new()
	end

	def test_enqueue
		@test_qu.enqueue("string")
		@test_qu.enqueue(4)
		@test_qu.enqueue([234])
		assert_equal(["string", 4, [234]], @test_qu.array)
		@test_qu.array = []
	end

	def test_dequeue
		@test_qu.array = [1,2,[1,2,3,4[3[2]]], 3.14, "hello", {test: "array"}]
		@test_qu.dequeue()
		@test_qu.dequeue()
		@test_qu.dequeue()
		@test_qu.dequeue()
		@test_qu.dequeue()
		@test_qu.dequeue()
		assert_equal([], @test_qu.array)
	end

	def test_underflow
		@test_qu.array = [1,2,[1,2,3,4[3[2]]], 3.14, "hello", {test: "array"}]
		#since the data is added w/o enqueue we must make the tail = the number of values added
		@test_qu.tail = 6
		@test_qu.head = 0
		@test_qu.dequeue()
		@test_qu.dequeue()
		@test_qu.dequeue()
		@test_qu.dequeue()
		@test_qu.dequeue()
		@test_qu.dequeue()
		@test_qu.dequeue()
		@test_qu.dequeue()
		assert_equal("Cant dequeue, Queue is empty", @test_qu.dequeue())
	end

end