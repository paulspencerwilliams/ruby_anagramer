require './lib/anagramer'

describe Anagramer do
  let (:words) { stub(:list => ['kinship', 'pinkish', 'fred'])}
  let (:anagramer) {Anagramer.new}
   

  context "when asked to lookup up a word with an anagram" do
    before(:each) do  
      @output = anagramer.lookup('pinkish', words) 
    end
    
    it "should return anagram" do
      @output.should include('kinship') 
    end

    it "should not return itself" do
      @output.should_not include('pinkish') 
    end

    it "should not return non anagrams" do
      @output.should_not include('fred') 
    end
  end

  context "when asked to lookup up a word without an anagram" do
    it "should return kinship" do
      anagramer.lookup('fred', words).should eq([]) 
    end
  end

  context "when asked to lookup up a word where cases differ" do
    before(:each) do  
      @output = anagramer.lookup('PINKISH', words) 
    end
    
    it "should return anagram" do
      @output.should include('kinship') 
    end

    it "should not return itself" do
      @output.should_not include('pinkish') 
    end

    it "should not return non anagrams" do
      @output.should_not include('fred') 
    end
  end
end
