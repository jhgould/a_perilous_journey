require './lib/node'

class LinkedList 
    attr_reader :head
  def initialize
    @head = nil
  end

  def append(string) 
    @head = Node.new(string)
  end 

  def count 
    binding.pry
  end 

end 