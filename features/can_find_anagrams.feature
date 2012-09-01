Feature: returns list of anagrams based on input
Scenario Outline: returns all anagrams
  Given I type in <input>
  When I ask for anagrams
  Then I should see <expected> 

  Examples: 
    | input   | expected |
    | kinship | pinkish |
    | enlist  | listen,silent,tinsel |
    | boaster | Barotse,reboast,sorbate |
    | fresher | refresh |
    | sink    | inks,skin |
    | knits   | stink |
    | rots    | sort |
