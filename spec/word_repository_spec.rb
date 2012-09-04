require './bin/word_repository'

describe WordRepository do
  context "when file exists" do
    it "should return list" do
      list = WordRepository.new.list
      list.count.should eq(235886)
      list[0].should eq('A')
    end
  end 
end
