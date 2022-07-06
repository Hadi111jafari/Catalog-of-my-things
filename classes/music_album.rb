require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(published_date, on_spotify)
    super(published_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    return true if super and on_spotify == true

    false
  end
end
