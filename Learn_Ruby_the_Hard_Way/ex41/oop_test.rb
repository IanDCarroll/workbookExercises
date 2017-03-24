require 'open-uri'

WORD_URL = "http://learncodethehardway.org/word.txt"
WORDS = []

PHRASES = {
  "class ### < ###\nend" =>
      "Make a class named ### that is-a ###.",
  "" =>
      "",
  "" =>
      "",
  "" =>
      "",
  "" =>
      "",
  "" =>
      "",
}

PHRASE_FIRST = ARGV[0] == "english"
