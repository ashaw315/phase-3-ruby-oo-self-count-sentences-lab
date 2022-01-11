require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
    self.split(/\.| ?!/).map { |sentence| !sentence.empty?}.count
  end
end