def caesar_cipher(string: String, shift: Integer)
  string.chars.map { |ch| shift_letter(ch, shift) }.join
end

def shift_letter(letter, shift)
  alphabet = ('a'..'z').to_a
  return letter unless alphabet.include?(letter.downcase)

  base = letter == letter.upcase ? 'A'.ord : 'a'.ord
  (((letter.ord - base + shift) % 26) + base).chr
end

p shift_letter('a', 3) # => "d"
p shift_letter('z', 1) # => "a"
p shift_letter('C', 2) # => "E"
p shift_letter('!', 5) # => "!"

puts caesar_cipher(string: 'What a string!', shift: 5)
