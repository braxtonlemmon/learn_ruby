class Book
    attr_accessor :title
    def title=(title)
        bad = ['the', 'a', 'an', 'and', 'but', 'in', 'of',
               'for', 'of', 'or']
        @title = title.split(' ').map do |word|
            bad.include?(word) ? word : word.capitalize
        end
        @title[0] = @title[0].capitalize
        @title = @title.join(' ')
    end
end
