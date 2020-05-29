require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
   self.end_with?("?") 
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sen_split = self.split(".")
    ex_split = sen_split.join("!").split("!")
    q_split = ex_split.join("?").split("?")
    q_split.reject(&:empty?).length
  end
end
