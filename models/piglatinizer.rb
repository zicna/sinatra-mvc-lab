class PigLatinizer

    attr_accessor :text

    def initialize(text)
        @text = text
    end

    def piglatinize
       text.split(" ").map do |word|
        piglatinize_single_word(word)
       end.join(" ")
    end

    def piglatinize_single_word(word)
        if word.start_with?(/[aeiouAEIOU]/)
            word = "#{word}way"
        else
            consonants = []
            until word.start_with?(/[aeiouAEIOU]/)
                consonants << word[0]
                word.slice!(0)
            end
            word = "#{word}#{consonants.join('')}ay"
        end
    end

end