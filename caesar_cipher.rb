

def caesar_cipher(str, num, direction="right")
    word = []
    new_arr = []
    ("a".."z").each {|letter| new_arr << letter}
    str.chars.each_with_index do |letter, index|
        if letter==" "
            word[index] = letter
        else
        idx = new_arr.index(letter.downcase)
        case direction
        when "right"
            new_idx = idx + num
            if new_idx > 26
                diff = new_idx - 26
                word << new_arr[diff]
            else
                word << new_arr[idx + num]
            end
        when "left"
            new_idx = idx - num
            if new_idx < 0
                diff = 26 + new_idx
                word << new_arr[diff] 
            else
                word << new_arr[new_idx]
            end
        else
            return "Wrong direction. Kindly enter the correct direction"
        end
    end
    end

    word.join("")
end
word = caesar_cipher("what a string", 5, direction="left")
p word


# "asdf jkl".chars.each_with_index {|l, i|