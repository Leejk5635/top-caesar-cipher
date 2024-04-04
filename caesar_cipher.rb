def caesar_cipher(inputText, shiftNumber)
  output=""
  asciiText = convertAscii(inputText)
  asciiText.each { |asciiNum| output += (shiftChar(asciiNum, shiftNumber).chr) }

  output
end

def convertAscii(inputText)
  inputText.chars.map { |character| character.ord }
end

def shiftChar(letter, shiftNum)
  if (65..90).include?(letter)
    if letter + shiftNum <= 90
      letter += shiftNum
      return letter
    else
      letter = (64 + ((letter + shiftNum) - 90))
      return letter
    end
  elsif (97..122).include?(letter)
    if letter + shiftNum <= 122
      letter += shiftNum
      return letter
    else
      letter = (96 +((letter + shiftNum) - 122))
      return letter
    end
  else 
    return letter
  end
end

puts caesar_cipher("What a string!", 5)
