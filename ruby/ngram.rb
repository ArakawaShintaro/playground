require 'ngram'

ngram = NGram.new({
  :size => 2,
  :word_separator => " ",
  :padchar => "_"
})

puts ngram.parse('-test@')
puts ngram
