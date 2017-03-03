##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word
def first_char word
  word[0].downcase
end
#polly_wanna
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated
def polly_wanna word
  word * 3
end
#count_chars
  # takes in a word
  # returns the number of characters in the word
def count_chars word
  word.length
end
#yell
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message
def yell message
  message.upcase + "!"
end
## STRETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message
def to_telegram message
  p message
  message.gsub(/[.]/, " STOP")
end

#spell_out
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes
def spell_out str
  str.downcase.split('').join('-')
end

#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string
def seperate str, char="-"
  str.split("").join(char)
end
## STRETCH ##
#croon
  # seperates word characters with dashes
  # preserves whitespace between words
def croon str
  ans = ""
  words = str.split(" ")
  words.each_with_index {|word, i|
    if words[i] == words[-1]
      ans << word.split("").join("-")
      ans
      return ans
    else
      ans << word.split("").join("-") + " "
      ans
    end
  }
end
#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false
def palindrome_word? word
  if word.length === 1
    return true
  end
  lower = word.downcase
  num = (lower.length/2.0).floor
  num.times do |x|
    if lower[x] == lower[-(x+1)]
      if x == num - 1
        return true
      end
      next
    else
      return false
    end
  end
end

## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation
def palindrome_sentence? str
  short = str.gsub /[^a-zA-Z]/, ""
  palindrome_word? short
end
#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully
def is_vowel letter
  return false if letter.class != String || letter.length != 1
  vowels = "aeiouAEIOU"
  vowels.include? letter
end
#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence
def add_period str
  ends = ".,;:!?"
  return str if ends.include? str[-1]
  str += "."
end

