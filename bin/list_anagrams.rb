#!/usr/bin/env ruby
$LOAD_PATH << File.expand_path(File.dirname(__FILE__)) 
require 'anagramer'
anagrams = Anagramer.new.lookup(ARGV[0])
print(anagrams.join(','))
