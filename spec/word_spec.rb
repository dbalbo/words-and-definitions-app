require('rspec')
require('definition')
require('word')


describe('Word') do
before() do
	Word.clear
end

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

describe('.clear') do
		it('removes all terms from the array')do
		test_term = Word.new('orange')
		test_term.save()
		Word.clear()
		expect(Word.clear()).to(eq([]))
	end
end

describe('#id') do
	it('returns the id of the term') do
		test_term = Word.new('orange')
		test_term.save()
	end	
end	

describe('.find') do
	it('searches for a term by its id and returns the term')do
		test_term = Word.new('orange')
		test_term.save()
		test_term2 = Word.new('apple')
		test_term2.save()
		expect(Word.find(test_term2.id())).to(eq(test_term2))
	end
end

describe('#add_words')do
		it('adds a word to a specific definition') do
			test_term = Word.new('orange')
			test_word = Definition.new("definition1", "defintion2", "definition3")
		  test_term.add_words(test_word)
		  expect(test_term.words()).to(eq([test_word]))
		 end	
	end	
end	




















