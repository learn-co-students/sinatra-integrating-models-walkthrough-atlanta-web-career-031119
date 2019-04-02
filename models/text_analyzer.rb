class TextAnalyzer
    def initialize(text)
        @text=text.downcase
    end
    attr_reader: :text
    def count_of_words
        words=text.split(" ")
        return words.length
    end
    def count_of_vowels
        return text.scan(/[aeiou]/).length
    end
    def count_of_consonants
        return text.scan(/[bcdfghjklmnpqrstvwxyz]/).length
    end
    def most_used_letter
        s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
        arr = s1.split('')
        arr1 = arr.uniq
        arr2 = {}
    
        arr1.map do |c|
            arr2[c] =  arr.count(c)
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
