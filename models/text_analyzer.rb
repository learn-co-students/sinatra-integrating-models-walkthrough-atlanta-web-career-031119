# Your TextAnalyzer model code will go here.
class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    words = text.split(" ")
    words.count
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

    # def most_used_letter
    #   letters = text.delete(" ").chars
    #   counts = Hash.new(0)
    #   letters.each do |letter|
    #     counts[letter] += 1
    #   end
    #   counts.sort_by { |letter, count| count }.reverse.first
    # end

  def most_used_letter
    s1 = text.gsub(/[^a-z]/, '') # get rid of spaces
    arr = s1.split('') ## split text in to array
    arr1 = arr.uniq ## remove repeated items in array
    arr2 = {} ## empty hash
    arr1.map do |c|
      arr2[c] = arr.count(c)
    end
    biggest = { arr2.keys.first => arr2.values.first }

    arr2.each do |key, value|
      if value > biggest.values.first
        biggest = {}
        biggest[key] = value
      end
    end
    biggest
  end
end
  #hello = TextAnalyzer.new("hello")

  #puts hello.count_of_vowels.to_s
