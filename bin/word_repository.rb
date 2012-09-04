class WordRepository
  def list 
    arr = IO.read('/usr/share/dict/words').split
  end
end
