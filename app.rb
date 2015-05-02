require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')






get('/') do 
	erb(:index)
end

get('/terms/new') do
	erb(:terms_form)
end	


get('/terms') do
	@terms = Word.all()
	erb(:terms)
end

post('/terms') do
	term = params.fetch('term')
	Word.new(term).save()
	@terms = Word.all()
	erb(:success)
end	

get('/words/:id')do
	@word = Definition.find(params.fetch('id'))
	erb(:word)
end	

get('/terms/:id') do
	@term = Word.find(params.fetch('id').to_i())
	erb(:term)

get('/terms/:id/words/new')	do
	@term = Word.find(params.fetch('id').to_i())
	erb(:term_words_form)
end	

post('/words') do
	first_def = params.fetch("first_def")
	second_def = params.fetch("second_def:")
	third_def = params.fetch("third_def:")
	@word = Definition.new(first_def, second_def, third_def)
	@word.save()
	@term = Word.find(params.fetch('term_id').to_i())
	@term.add_words(@words)
	@words = @term.words()
	erb(:words)
end	
