require 'yaml'
require 'pry'

def load_library (file)
  fin_hashao={}
  fin_hashao["get_meaning"]={}
  fin_hashao["get_emoticon"]={}
  hashao=YAML.load_file(file)
  hashao.each do |meaning,emoticons|
    fin_hashao["get_meaning"][emoticons[1]]=meaning
    fin_hashao["get_emoticon"][emoticons[0]]=emoticons[1]
  end
  fin_hashao
end

def get_japanese_emoticon (file,emoticon)
  dictionary=load_library(file)
  english=""
  if dictionary["get_emoticon"][emoticon]!=nil
    return english
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end
