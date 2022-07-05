class Item
  attr_reader :published_date

  def can_be_archived?()
    # @published_date
    false
  end
  def archived
    false
  end
  def move_to_archive
    false
  end
end
