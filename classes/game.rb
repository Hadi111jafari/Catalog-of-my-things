require 'date'
require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at
  def initialize(published_date, multiplayer, last_played_at)
    super(published_date)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end

  def can_be_archived?
    return true if super and (Date.today.year - @last_played_at.year > 2)
    false
  end
end
