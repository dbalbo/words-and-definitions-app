require('rspec')
require('definition')

describe('#first_def') do
	it('returns the first definition of a word entered')do
		test_word = Definition.new("definition1", "defintion2", "definition3")
		expect(test_word.first_def()).to(eq("definition1"))
	end
end

describe('#second_def') do
	it('returns the second definition of a word entered') do
		test_word = Definition.new("definition1", "definition2", "definition3")
		expect(test_word.second_def()).to(eq('definition2'))
	end
end	

describe('#third_def') do
	it('returns the third definition of a word entered')do
		test_word = Definition.new("definition1", "definition2", "definition3")
		expect(test_word.third_def()).to(eq('definition3'))
	end
end

describe('.all') do
	it('is empty at first') do
		expect(Definition.all()).to(eq([]))
	end
end	

describe('#save') do
	it('pushes a word into an array of saved words and definitions') do
		test_word = Definition.new("definition1", "definition2", "definition3")
		test_word.save()
		expect(Definition.all()).to(eq([test_word]))
	end
end

describe('.clear') do
	it('empties out all of the saved words')do
		test_word = Definition.new("definition1", "definition2", "definition3")
		test_word.save()
		Definition.clear()
		expect(Definition.all()).to(eq([]))
	end
end

describe('#id') do
	it('creates a unique id for the word so it can be found') do
		test_word = Definition.new("definition1", "definition2", "definition3")
		test_word.save()
		expect(test_word.id()).to(eq(1))
		end
	end

	describe('.find') do
		it('returns a word by its id number') do
			test_word = Definition.new("definition1", "definition2", "definition3")
			test_word.save()
			test_word2 =Definition.new("weird", "frustrating", "internet")
			test_word2.save()
			expect(Definition.find(test_word.id())).to(eq(test_word))
		end	
	end







# describe(Definition) do
	

# end

# describe('#word') do   it('returns a definition of a word entered')do
# test_defintiion = Defnition.new({:defintion1 => 'something spoken', :defintion2 => 'something written', :definition3 => 'something created'})
# expect(test_defintion.word()).to(eq('something spoken'))
# 		end
# 	end






	# describe ('definition2') do
	# 	it('returns a new definition of the word entered')
	# 	test_definition = Definition.new ('')
	# end
