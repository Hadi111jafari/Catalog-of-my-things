class Book
  attr_accessor :publisher, :cover_state

  def initialize()
    # date, publisher, cover_state
    # super(date)
    # @publisher = publisher
    # @cover_state = cover_state
  end

  # private

  def can_be_archived?
    # return true if super || cover_state == 'bad'
    true
  end
end
