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
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
  end
end

# /\.|\?|!/ is an expression that searches for periods, question marks and exclamations in a string