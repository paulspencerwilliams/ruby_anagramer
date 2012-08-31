Feature: returns list of anagrams based on input
Scenario Outline: returns all anagrams
  Given I type in <input>
  When I ask for anagrams
  Then I should see <expected> 

  Examples: 
    | input | expected |
    | kinship | pinkish |
    | enlist  | inlets,listen,silent |
    | boaster | boaters borates |
    | fresher | refresh |
    | sink   | skin |
    | knits   | stink |
    | rots    | sort |
    | andrew    | test |
