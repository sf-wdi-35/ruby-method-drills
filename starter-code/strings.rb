##############################
#### MANIPULATING STRINGS ####
##############################
def first_char str
  str[0].downcase
end

def polly_wanna str
  str*3
end

def count_chars str
  str.length
end
  
def yell str
  str.upcase + "!"
end

## STRETCH ##
def to_telegram str
  str.gsub(/"."/, ' STOP')
end
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message


def spell_out str
  str.downcase
end
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes


#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string

## STRETCH ##
def croon str
  str.gsub(/" "/, "-")
end
  # seperates word characters with dashes
  # preserves whitespace between words

def palindrome_word? str
  new_str = str.downcase
  if new_str == new_str.reverse
    true
  else
    false
  end
end

## SUPER STRETCH ##
def palindrome_sentence? str
  new_str = str.downcase.split(" ").join
  if new_str == new_str.reverse
    true
  else
    false
  end
end
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

def is_vowel char
  vowels = "aeiou".split("")
  vowels.each do |vowel|
    if vowel == char.downcase
      true
    else
      false
    end
  end
end
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
