require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      TRUE
    else 
      FALSE
    end
  end

  def question?
    if self.end_with?("?")
      TRUE
    else
      FALSE
    end
  end

  def exclamation?
    if self.end_with?("!")
      TRUE
    else
      FALSE
    end 
  end

  def count_sentences
    converted = self.gsub(/[.?!]/, "*")
    string = converted.split("*")
    cleaned = string.reject{|element| element.empty?}
    counted = cleaned.count
    counted
  end
end