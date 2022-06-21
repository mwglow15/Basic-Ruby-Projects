def caesar_cipher(string, shift)
    string.split("").reduce("") { |new_word, char| new_word + shift_chars(char, shift)}
end

def shift_chars(alpha, shift)
    if ((alpha.ord <= 90 && alpha.ord >= 65) || (alpha.ord <= 122 && alpha.ord >= 97)) then
        new_num = alpha.ord + shift
        if (alpha.ord <= 90 && alpha.ord >= 65 && new_num > 90) then 
            new_num = new_num - 26
        elsif (alpha.ord <= 122 && alpha.ord >= 97 && new_num > 122) then
            new_num = new_num - 26
        end
        new_alpha = new_num.chr    
    else
        new_alpha = alpha
    end
    new_alpha
end

cipher = caesar_cipher("What a String!", 5)
puts cipher
