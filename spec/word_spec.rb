require('rspec')
require('definition')
require('word')

describe('#word_entry') do
	it('returns the name of the entered word') do
		test_wordentry = Word.new("orange")
		expect(test_wordentry.word_entry()).to(eq('orange'))
	end	
end