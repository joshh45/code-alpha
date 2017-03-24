# code-alpha


UPDATE Fixed*

There are a couple of bugs at the moment
ex. string "defac"
results in [] and [] instead of just one blank array for invalid setences (most likely my conditional)

My tests results also require "\n" instead of returning a whole array seperated by commas

Overall, the code is functioning and returns the correct output for most cases.  

ex. return_sentences("abcc", grammar) => "a bc c"
return_sentences("abcdefg", grammar) => "abcd e fg", "a bc def g", "a bcd e fg"

In order to test and run this on your local machine you can

-git clone (paste URL here)
-when in the file directory be sure to bundle
-to run tests after you bundle type in rspec or rspec spec in the terminal
