require_relative "linked_list"
require "test/unit"

class TestLinkedList < Test::Unit::TestCase

	def setup
		testlist = List.new
	end

	def test_append
		testlist.append("Second")
		testlist.append("First")
		assert_equals("First", testlist.head)
	end
end