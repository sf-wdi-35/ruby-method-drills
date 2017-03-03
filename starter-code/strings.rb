##############################
#### MANIPULATING STRINGS ####
##############################
def first_char(word)
  word.to_s[0].downcase
end

def polly_wanna(word)
  word*3
end

def count_chars(word)
  word.length
end

def yell(message)
  message.upcase + "!"
end

## STRETCH ##
def to_telegram(message)
  message.gsub(/[.]/, " STOP")
end

#spell_out
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes


#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string

## STRETCH ##
#croon
  # seperates word characters with dashes
  # preserves whitespace between words

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false


## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully

#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence
