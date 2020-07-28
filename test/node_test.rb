require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'

class NodeTest < Minitest::Test

  def setup 
    @node = Node.new("Burke")
  end 

  def test_it_exsitss
    assert_instance_of Node, @node
  end 

  def test_it_has_readable_attributes 
    assert_equal "Burke", @node.surname
    assert_equal nil, @node.next_node
  end

end 
