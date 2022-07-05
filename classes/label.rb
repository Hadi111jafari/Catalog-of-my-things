require_relative './../item'
class Label
    attr_accessor :title, :color, :item
    def initialize(id, title, color, items)
        @id = Random.rand(1..1000)
        @title = title
        @color = color
        @items = []
    end
    def add_item(item: item)
        @item = item
        @items << self
    end
end