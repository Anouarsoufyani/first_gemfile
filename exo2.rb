def chiffre_de_cesar(string, number = 1)
  string = string.split(//)

  string.each do |elmt|

    elmt.downcase!

    if elmt.ord != 32
      elmt = elmt.ord + number
    else
      elmt = elmt.ord

    end

    if elmt > 122
      elmt -= 26
    end

    puts elmt.chr

  end
  puts string.join('')

end

puts chiffre_de_cesar("What a string", 5)

puts
puts

def caesar_cipher(string, shift = 1)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

  encrypter = non_caps.merge(caps)

  string.chars.map { |c| encrypter.fetch(c, c) }
end

puts caesar_cipher("What a string!", 5).join
