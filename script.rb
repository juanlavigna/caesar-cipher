def caesar_cipher (string, num)
    string.downcase!
    string_to_array = string.split("")
    ord = string_to_array.map {|i| i.ord}
    # ord devuelve un array con los codigos ascii
    shifted = ord.map do |i| 
        if i.between?(65,90)
            if num.positive?
                i + num > 90 ? (i + num) - 26 : i + num
            else
                i + num < 65 ? (i + num) + 26 : i + num
            end
        elsif i.between?(97,122)
            if num.positive?
                i + num > 122 ? (i + num) - 26 : i + num
            else
                i + num < 97 ? (i + num) + 26 : i + num
            end
        else
            i
        end
    end
    cifrado = shifted.map {|i| i.chr}.join
    p cifrado
end

caesar_cipher("fmjy hsyl", 2)




# phrase = gets.chomp

# shift_factor = gets.chomp.to_i

