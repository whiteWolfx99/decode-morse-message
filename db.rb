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

def decode_word(word)
  word.split(' ').map { |c| decode_char(c) }.join('')
end

def decode_message(message)
  message.split('  ').map { |w| decode_word(w) }.join(' ')
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

