# frozen_string_literal: true

MORSE = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..',
  'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....',
  'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
  'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
  'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
  'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
  'Y' => '-.--', 'Z' => '--..'
}.freeze

def decode_char(char)
  MORSE.key(char)
end

def decode_word(word)
  word.split(' ').map { |c| decode_char(c) }.join('')
end

def decode_message(message)
  message.split('  ').map { |w| decode_word(w) }.join(' ')
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
