require('rspec')
require('palabras')

describe('#definition1') do
	it('returns a definition of the word entered')do
	test_definition = Definition.new ("another name for cat")
	expect(test_definition.definition1()).to(eq('another name for cat'))

	end
end
	
