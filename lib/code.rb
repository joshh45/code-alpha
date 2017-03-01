grammar = {
  noun: ["abcd", "c", "def", "h", "ij", "cde"],
  verb: ["bc", "fg", "g", "hij", "bcd"],
  article:  ["a", "ac", "e"]}


def return_sentences(string, grammar, head = [], structure = [])
  array = [];
  if string.empty?
    if !structure.include?(:verb)
      puts "[]"
    elsif structure.include?(:verb) && structure.include?(:noun) && structure.count(:article) == 0
      array.push(head.join(' '));
      puts array
    elsif structure.include?(:verb) && !structure.include?(:noun) && structure.count(:article) < 2
      puts "[]"
    else structure.include?(:verb) || structure.include?(:noun) || structure.count(:article) > 2
      array.push(head.join(' '));
      puts array
    end
  else
    grammar.each do |type, words|
      words.each do |word|
        if string.start_with?(word)
          return_sentences(string.slice(word.size..-1), grammar, head + [word], structure + [type])
        end
      end
    end
  end
end
