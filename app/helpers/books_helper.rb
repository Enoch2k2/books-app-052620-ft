module BooksHelper
  def rating_to_words(rating)
    case rating
      when 5
        return "Excellent"
      when 4
        return "Good"
      when 3
        return "Ok"
      when 2
        return "Bad"
      when 1
        return "Terrible"
      when 0
        return "Not yet rated"
    end
  end
end