def caesar_cipher(string, key)
    array_string = string.chars.map { |char| char.ord }
    cipher = array_string.map { |char|
        if char.between?(65, 90)
            char + key > 90 ? (char + key) - 26 : char + key;

        elsif char.between?(97, 122)
            char + key > 122 ? (char + key) - 26 : char + key;
        else
            char
       end
    }
    encrypted = cipher.map { |char| char.chr }.join
    p encrypted
end

caesar_cipher("What a string!", 5)
