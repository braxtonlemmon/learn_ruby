def translate(phrase)
    phrase = phrase.split(' ').map do |word|
        if word[0].downcase.match(/[aeiou]/)
            new_word = word + 'ay'
        else
            new_word = word.split('')
            word.each_char do |char|
                if char.downcase.match(/[^aeio]/)
                    new_word.shift
                    new_word << char
                else
                    break
                end
            end
            new_word = new_word.join('') + 'ay'
        end
        (word.capitalize == word) ? new_word.capitalize : new_word
    end
    phrase.join(' ')
end