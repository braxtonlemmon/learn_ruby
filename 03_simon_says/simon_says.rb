def echo(phrase)
    phrase
end

def shout(phrase)
    phrase.upcase
end

def repeat(phrase, repeats = 2)
    response = []
    repeats.times { response << phrase }
    response.join(' ')
end

def start_of_word(word, letters)
    word.split('').slice(0, letters).join('')
end

def first_word(phrase)
    phrase.split(' ')[0]
end

def titleize(title)
    bad = ['a', 'an', 'the', 'and', 'but', 'or', 'for', 'nor',
           'on', 'at', 'to', 'from', 'by', 'over']
    title = title.split(' ').map { |word| bad.include?(word) ? word : word.capitalize }
    title[0] = title[0].capitalize
    title.join(' ')
end

