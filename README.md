# What's this then? 

At [Agile Staffs August 2012](http://agilestaffordshire.org/?p=281 "Agile Staffs August 2012"), Trevor introduced the [Anagram kata](http://codekata.pragprog.com/2007/01/kata_six_anagra.html" Anagram Kata"). A few attempts were made using .Net, Java, Objective C and this one; mine in Ruby. 

It's Acceptance Test Driven using Cucumber for acceptance tests, and rspec for unit testing. 

Following a couple of hours coding, Trevor, Cathy and I chatted for some time about language choice and in particular optimisation. My first implementation took the simplist implementation to meet requirementse which worked, but was slow to run. Trevor liked the simple sorting approach I took, and suggested this could be improved by hashing using keys with a string formed by sorting the characters making up each word in the anagram set.

eg { 'eilnst' => ['enlist', 'inlets', 'listen', silent'])

During this conversation, I suggested that use of, and the form of any optimisation should be applied based on usage patterns. If the app was a short lived console app where one off latency is most important, then this structure building exercise might simply provide overhead with no benefit. If this implementation was in a long running app (web app, web service, daemon etc) where this one off structure building bootstrap would be negligable compared to the large performance improvements for each anagram request. 

Therefore, we suggested that a subsequent Agile Staffs meeting could take on some of these implementations and optimise for performance based on different use cases. This solution will evolve to provide benchmarking of solutions to provide some statistics. 
