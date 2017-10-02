class StringCipher

  def self.cipher(string, key)
    alphabet = ('a'..'z').to_a

    newstring = ''

      string.each_char do |char|

        if char !~ /\w/
          newstring += char
        end

        if char =~ /\d/
          newstring += char
        end

        alphabet.each.with_index do |letter, index|
          if letter == char
            newindex = index + key - 26
            newstring += alphabet[newindex]
          elsif letter.upcase == char
            newindex = index + key - 26
            newstring += alphabet[newindex].upcase
          end
        end
      end
      return newstring
  end
end
