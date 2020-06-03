# require 'pry'

class String

  def sentence?
    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  # def count_sentences
  #   sentence_array = self.split(" ").select {|i| i.include?(".") || i.include?("!") || i.include?("?")}
  #   sentence_array.count
  # end


  def count_sentences
    sentence_array = self.split(/[.|!|?]/)
    # binding.pry
    sentence_array.select{|i| i.length > 0}.count
  end

end