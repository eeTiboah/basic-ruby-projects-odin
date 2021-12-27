

def caesar_cipher(str, num, direction="right")
    word = []
    new_arr = []
    ("a".."z").each {|letter| new_arr << letter}
    str.split("").each do |letter|
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
            return "Wrong direction. Kindly enter the right direction"
        end
    end

    word.join().capitalize
end

word = caesar_cipher("what", 5)
p word
