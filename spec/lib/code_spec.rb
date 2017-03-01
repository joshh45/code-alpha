require "spec_helper"
require "pry"

RSpec.describe "Return_sentences" do
    grammar = {
    noun: ["abcd", "c", "def", "h", "ij", "cde"],
    verb: ["bc", "fg", "g", "hij", "bcd"],
    article:  ["a", "ac", "e"]}

    it "does not contain a verb" do
      expect { return_sentences("a", grammar) }.to output("[]\n").to_stdout
      expect { return_sentences("defe", grammar) }.to output("[]\n").to_stdout
      expect { return_sentences("ijac", grammar) }.to output("[]\n[]\n").to_stdout
    end

    it "contains a verb, noun, and article" do
      expect { return_sentences("abcdefg", grammar) }.to output("abcd e fg\na bc def g\na bcd e fg\n").to_stdout
      expect { return_sentences("ijbcaac", grammar) }.to output("ij bc a a c\nij bc a ac\n").to_stdout
    end

    it "contains two articles and a verb" do
      expect { return_sentences("bcaa", grammar) }.to output("bc a a\n").to_stdout
    end

    it "contains a noun and a verb" do
      expect { return_sentences("cbc", grammar) }.to output("c bc\n").to_stdout
      expect { return_sentences("ijbcd", grammar) }.to output("ij bcd\n").to_stdout
    end
end
