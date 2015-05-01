require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')






get('/') do 
	erb(:index)
end


get('/words') do
	@words = Defnition.all()
	erb(:words)
end

get('/words/new') do
	erb(:words_form)
end	

post('/words') do
	first_def = params.fetch("first_def")
	second_def = params.fetch("second_def:")
	third_def = params.fetch("third_def:")
	words = Definition.new(first_def, second_def, third_def)
	words.save()
	erb(:success)
end	

get('/words/:id') do
	@word = Definition.find(params.fetch('id').to_i())
	erb(:word)