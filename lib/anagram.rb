# Your code goes here!
class Anagram

    def initialize(word_to_match)
        @word_to_match = word_to_match
    end

    def match(word_array)
        matches = []
        chars_to_match = @word_to_match.chars.sort
        word_array.each do |word|
            chars = word.chars.sort
            if chars == chars_to_match
                matches << word
            end  
        end
        matches
    end
    
end

listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])