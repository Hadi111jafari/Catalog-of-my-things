require_relative './jsonable'
require_relative './item'

class Genre < JSONable
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name) # rubocop:disable Lint/MissingSuper
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    item.genre = self
    @items.push(item)
  end
end
