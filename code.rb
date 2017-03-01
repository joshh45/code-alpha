grammar = {
  noun: ["abcd", "c", "def", "h", "ij", "cde"],
  verb: ["bc", "fg", "g", "hij", "bcd"],
  article:  ["a", "ac", "e"]}


def return_setences(string, grammar, head = [], structure = [])
  array = [];
  if string.empty?
    puts "placeholder for logic"
  else
    grammar.each do |type, words|
      words.each do |word|
        if string.start_with?(word)
          return_setences(string.slice(word.size..-1), grammar, head + [word], structure + [type])
        end
      end
    end
  end
end


return_setences("abcdefg", grammar)
