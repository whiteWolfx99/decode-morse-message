Morse = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 
  'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....',
  'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
  'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
  'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
  'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
  'Y' => '-.--', 'Z' => '--..',
}

def decode_char(char)
  Morse.each do |key, value|
    if value == char
      return key
    end
  end
end

puts decode_char('-...')


# def from_morse(string)
#   string.upcase.split('').map { |c| Morse[c] }.join(' ')
# end
