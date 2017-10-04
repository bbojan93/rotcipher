class StringCipher

  def initialize(key)
    @key = key
  end

  def cipher(string)
    alphabet = ('a'..'z').to_a

    newstring = ''

    string.each_char do |char|

      if char !~ /\w/ || char =~ /\d/
        newstring += char
      end

      alphabet.each.with_index do |letter, index|
        if letter == char
          newindex = index + @key - 26
          newstring += alphabet[newindex]
        elsif letter.upcase == char
          newindex = index + @key - 26
          newstring += alphabet[newindex].upcase
        end
      end

    end
    return newstring
  end

end
