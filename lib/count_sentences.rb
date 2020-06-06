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

    count = 0

    store_string = []

    if self.empty?
      return 0
    end

    if self.sentence?
       store_string = self.split(".")
       store_string.delete("")
      count = count + store_string.length
      
    else
      store_string = self.split(".")
      store_string.delete("")
      count = count + store_string.length - 1
      
    end
    
    if self.exclamation?
       store_string = self.split("!")
       store_string.delete("")
      count = count + store_string.length
      
    else
      store_string = self.split("!")
      store_string.delete("")
      count = count + store_string.length - 1
      
    end
    
    if self.question?
       store_string = self.split("?")
       store_string.delete("")
      count = count + store_string.length
      
    else
      store_string = self.split("?")
      store_string.delete("")
      count = count + store_string.length - 1
      
    end
    
    count



  end
end