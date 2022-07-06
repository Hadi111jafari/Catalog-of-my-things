require 'date'
require_relative './item'

class Game < item
  attr_accessor :multiplayer, :last_played_at
  def initialize(multiplayer, last_played_at)
    super(multiplayer)
    @multiplayer = multiplayer
    @last_played_at = Date.new(last_played_at.to_i)
  end

  def can_be_archived?
    return true if super and (Date.today.year - @last_played_at.year > 2)
  end
end
