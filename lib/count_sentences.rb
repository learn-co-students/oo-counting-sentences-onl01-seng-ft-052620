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
    sentences = self.gsub(".", "142").gsub("?", "142").gsub("!", "142").split("142").reject {|sentence| sentence == ""}
    sentences.count
    
  end
end