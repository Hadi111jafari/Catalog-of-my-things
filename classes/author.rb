require_relative './item'

class Author
  attr_accessor :first_name, :last_name
  attr_reader :items, :id
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @id = Random.rand(1..1000)
    @items = []
  end
  def add_item(_item)
    _item.author = self
    @items << _item
    true
  end
end
