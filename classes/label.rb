require_relative './jsonable'

class Label < JSONable
  attr_accessor :title, :color
  attr_reader :items, :id

  def initialize(title, color) # rubocop:disable Lint/MissingSuper
    @id = Random.rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    item.add_label(self)
    @items << item unless @items.include?(item)
  end
end
