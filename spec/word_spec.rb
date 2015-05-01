require('rspec')
require('definition')
require('word')

describe('#word_entry') do
	it('returns the name of the entered word') do
		test_wordentry = Word.new("orange")
		expect(test_wordentry.word_entry()).to(eq('orange'))
	end	
end

describe('.all') do
	it('is empty at first') do
		expect(Word.all()).to(eq([]))
	end
end	




# describe('#save') do
# 	it ('adds a word_entry to an array of saved word entries') do
# 		test_wordentry = Word.new('orange')
# 		test_wordentry.save()
# 		expect(Word.all()).to(eq([test_wordentry]))
# 	end
# end

