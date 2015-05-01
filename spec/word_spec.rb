require('rspec')
require('definition')
require('word')

describe('#term') do
	it('returns the name of the entered word') do
		test_term = Word.new("orange")
		expect(test_term.term()).to(eq('orange'))
	end	
end

describe('.all') do
	it('is empty at first') do
		expect(Word.all()).to(eq([]))
	end
end	

describe('#save') do
	it('adds a new term to an array of saved terms') do
		test_term = Word.new('orange')
		test_term.save()
		expect(Word.all()).to(eq([test_term]))
	end
end

