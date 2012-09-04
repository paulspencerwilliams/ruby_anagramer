Feature: returns list of anagrams based on input
Scenario Outline: returns all anagrams
  Given I ask for anagrams for <input>
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
