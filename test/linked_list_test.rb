require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/linked_list'
require './lib/node'



class LinkedListTest < Minitest::Test 
  def setup 
    @list = LinkedList.new
    
  end 

  def test_it_exists
    assert_instance_of LinkedList, @list
  end 

  def test_it_has_readable_attributes 
    assert_equal nil, @list.head
  end 

  def test_it_can_append 
    node = @list.append("West")
    assert_equal "West", node.surname
    assert_equal nil, node.next_node
    assert_instance_of Node, @list.head
    assert_equal nil, @list.head.next_node
  end 

  def test_it_can_count 
    node = @list.append("West")
    assert_equal 1, @list.count
  end

end 