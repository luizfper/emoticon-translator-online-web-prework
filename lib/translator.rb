require 'yaml'
require 'pry'

def load_library (file)
  fin_hashao={}
  fin_hashao[:get_meaning]={}
  fin_hashao[:get_emoticon]={}
  hashao=YAML.load_file(file)
  hashao.each
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
