#write your code here
def echo(phrase)
    phrase
end

def shout(phrase)
    phrase.upcase
end

def repeat(phrase, times = 2)
    string = ""
    while times > 0 do
        if times > 1
            string += "#{phrase} "
            times -= 1
        else
            string += "#{phrase}"
            times -= 1
        end
    end
    string
end

def start_of_word(phrase, character)
    phrase.slice(0, character)
end

def first_word(word)
    string = ""
    x = 0
    while word.slice(x) != " " do
        string += word.slice(x)
        x += 1
    end
    string
end



def titleize(str)
    str.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase  # returns the phrase with all the excluded words
end

