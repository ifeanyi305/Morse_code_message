@morse_alphabet = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
  '---..' => '8', '----.' => '9', '-----' => '0', '.-.-.-' => '.'
}

def get_letters(character)
  @current_letter = @morse_alphabet[character]
  @current_letter
end

def get_words(word)
  @current_word = ''
  word.split.each do |char|
    get_letters(char)
    @current_word += get_letters(char)
  end
  @current_word
end

def get_sentences(sentence)
  @current_sentence = sentence.split('')
  decoded_sentence = ''
  @current_sentence.each do |text|
    decoded_sentence += get_words(text)
  end
  decoded_sentence
end

puts get_sentences('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
