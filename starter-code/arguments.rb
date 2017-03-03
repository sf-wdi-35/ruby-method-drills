#########################
#### USING ARGUMENTS ####
#########################
def say_hello
  return 'hello'
end
def echo str
  return str
end

def eddie_izzards_height heels_height=0
  return heels_height + 67
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result
end

def how_many_args (*args)
  args.length
end

def find_answer (keyword = {})
  keyword[:answer]
end
