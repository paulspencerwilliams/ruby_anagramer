require './lib/word_repository'

class Anagramer
  def lookup(input, word_repository = WordRepository.new  ) 
    matches = []
    word_repository.list.each do |possible|
      if (possible.length == input.length) 
        if (possible.downcase != input.downcase)
          if (possible.downcase.split(//).sort == input.downcase.split(//).sort)
            matches << possible
          end
        end
      end
    end 
    matches
  end
end
