class Book

    def title
        @title
    end

    def title=(str)
        articles = ["the", "a", "and", "in", "the", "of", "an"]

        cap_String = str.capitalize

        @title = cap_String.split(" ").map {|word|
            if !articles.include?(word)
            word.capitalize
            else
                word
            end
        }.join(" ")
        
    end

# write your code here

end