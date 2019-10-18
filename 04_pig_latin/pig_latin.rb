#write your code here

def translate(str)
    vowels = ["a", "e", "i", "o", "u"]

    phrase = str.split(" ").map {|word| 
        if vowels.include?(word[0]) 
            word << "ay"
        elsif word.include? "qu"
            if word.include? "squ"
                word[0,3] = ""
                word << "squay"
            else
                word[0,2] = ""
                word << "quay"
            end
                
        else
            letters = ""
            while !vowels.include?(word[0]) do
                letters << word[0]
                word[0] = ""
            end
            word << "#{letters}ay"
            
        end
        
    }.join(" ")

    phrase
end


