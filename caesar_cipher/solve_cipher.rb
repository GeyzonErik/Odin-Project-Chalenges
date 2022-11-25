def caesar_cipher(string, key)
    p array_string = string.chars.map { |char| char.ord }
    p cipher = array_string.map { |char|
        if char.between?(65, 90)
            char - key < 65 ? (char - key) + 26 : char - key;

        elsif char.between?(97, 122)
            char - key < 97 ? (char - key) + 26 : char - key;
        else
            char
       end
    }
    solution = cipher.map { |char| char.chr }.join
    p solution
end

caesar_cipher("Bmfy f xywnsl!", 5)