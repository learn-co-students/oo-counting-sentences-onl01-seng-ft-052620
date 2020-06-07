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
  sentence = 0
  array = self.split
  array.each do |phrase|
  sentence += 1 if phrase.sentence? || phrase.exclamation? || phrase.question?
  end
  sentence
    binding.pry
  end

end
