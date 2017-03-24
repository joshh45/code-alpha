# grammar = {
#   noun: ["abcd", "c", "def", "h", "ij", "cde"],
#   verb: ["bc", "fg", "g", "hij", "bcd"],
#   article:  ["a", "ac", "e"]}
#
#
# def return_sentences(string, grammar, head = [], structure = [])
#   array = [];
#   if string.empty?
#   	if structure.include?(:verb) && (structure.include?(:noun) || structure.count(:article) >= 2)
#   		return head.join(" ");
#   	else
#   		return array
#     end
#   else
#     grammar.each do |type, words|
#       words.each do |word|
#         if string.start_with?(word)
#           return_sentences(string.slice(word.size..-1), grammar, head + [word], structure + [type])
#           'abcd/'
#           'zyf/'
#           'abcd/'
#           ''
#
#           'abcd/'
#           'zyfabcd/'
#         else
#           gibberish = []
#           i = 1
#
#           gibberish << string[0] #z
#
#           while !string[i..-1].start_with?(word)
#           	gibberish << string[i] #y, #f
#           	i ++
#           end
#
#            return_sentences(string.slice(word.size+gibberish.size..-1), grammar, head + [gibbierhs] + [word], structure + [type])
#         end
#       end
#     end
#   end
#   return array.flatten.select{ |x| !x.nil?}
# end
#
#
# return_sentences("abcdefg", grammar)
