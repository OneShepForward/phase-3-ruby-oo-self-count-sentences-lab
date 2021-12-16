require 'pry'

class String

  def sentence?
    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    # self =~ /[.!?]/
    new_array = self.split(/[.!?]/)
    newer_array = new_array.reject {|item| item == ""}.length
    # sentence_number = new_array.length
    # binding.pry
  end
end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...
".count_sentences