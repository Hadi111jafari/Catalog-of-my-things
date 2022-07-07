require_relative './item'
require_relative './jsonable'

class Author < JSONable
  attr_accessor :first_name, :last_name
  attr_reader :items, :id

  def initialize(first_name, last_name) # rubocop:disable Lint/MissingSuper
    @first_name = first_name
    @last_name = last_name
    @id = Random.rand(1..1000)
    @items = []
  end

  def add_item(item)
    item.author = self
    @items << item
    true
  end
end
