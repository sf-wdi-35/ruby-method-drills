##############################
#### MANIPULATING STRINGS ####
def first_char word
  word[0].downcase
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word
end

def polly_wanna word
  word * 3
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated
end

def count_chars word
  word.length
  # takes in a word
  # returns the number of characters in the word
end

def yell message
  return message.upcase + "!"
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message
end

## STRETCH ##
def to_telegram message
  message.gsub(/["."]/, " STOP")
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message
end


def spell_out str
  str_split = str.split("")
  str_join = str_split.join("-")
  str_join.downcase
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes
end


def seperate(str, sep="-")
  str_split = str.split("")
  str_join = str_split.join(sep)
end

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
