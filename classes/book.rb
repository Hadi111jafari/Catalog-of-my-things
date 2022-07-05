class Book
    def can_be_archived?
        return true if super || cover_state = "bad"
    end

end    