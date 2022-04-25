require 'pry-byebug'
def caesar_cipher(shift_count,original_word)
    alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    character_list = original_word.split('')
    processed_word = character_list.map do |character|
        if(character == " ")
            character
        else
            index = alphabet.index(character.downcase)+shift_count
            if (index > alphabet.length-1)
                index -= alphabet.length
            end
            if(character.upcase == character)
                alphabet[index].upcase
            else
                alphabet[index]
            end
        end
        
    end
    processed_word.join()
end

def decipher_caesar(shift_count,ciphered_word)
    alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    character_list = ciphered_word.split('')
    processed_word = character_list.map do |character|
        if(character == " ")
            character
        else
            index = alphabet.index(character.downcase)-shift_count
            if (index > alphabet.length-1)
                index += alphabet.length
            end
            if(character.upcase == character)
                alphabet[index].upcase
            else
                alphabet[index]
            end
        end
        
    end
    processed_word.join()
end

puts caesar = caesar_cipher(3, "cat DoG")
puts decipher_caesar = decipher_caesar(3, caesar)
