require('rspec')
require('palabras')

describe('#first') do
	it('returns the first definition of a word entered')do
		test_definition = Definition.new("definition1", "defintion2", "definition3")
		expect(test_definition.first()).to(eq("definition1"))
	end
end

describe('#second') do
	it('returns the second definition of a word entered') do
		test_definition = Definition.new("definition1", "definition2", "definition3")
		expect(test_definition.second()).to(eq('definition2'))
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
