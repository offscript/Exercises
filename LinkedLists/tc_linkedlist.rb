require_relative "linked_list"
require "test/unit"

class TestLinkedList < Test::Unit::TestCase


	def test_append
		@testlist = List.new
		@testlist.append("First")
		@testlist.append("Second")
		@testlist.append("Third")
		@testlist.append("Fourth")
		assert_equal("Fourth", @testlist.tail.data)
	end

	def test_prepend
		@testlist = List.new
		@testlist.prepend("First")
		@testlist.prepend("Second")
		@testlist.prepend("Third")
		@testlist.prepend("Fourth")
		assert_equal("Fourth", @testlist.head.data)
	end

end