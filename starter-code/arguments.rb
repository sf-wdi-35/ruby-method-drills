#########################
#### USING ARGUMENTS ####
#########################
def say_hello
   return 'hello'
end
def echo (stuff)
  return stuff.to_s
end

def eddie_izzards_height(eddies_heels = 0)
  eddies_heels + 67
end

def how_many_args(*check)
  check.count
end

def find_answer(guess={})
  guess[:answer]
end
