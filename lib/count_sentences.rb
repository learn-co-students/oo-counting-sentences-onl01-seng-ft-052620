require 'pry'

class String

  def sentence?
    self.end_with?(".") #true if it ends in a "." and false if not
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[.?!]+/).count
  end
end