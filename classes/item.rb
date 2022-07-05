class Item
  attr_reader :published_date

  def can_be_archived?()
    # @published_date
    true
  end

  def archived
    true
  end

  def move_to_archive
    true
  end
end
