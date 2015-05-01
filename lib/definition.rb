class Definition

	@@words =[]

	define_method(:initialize) do |first_def, second_def, third_def|
		@first_def = first_def
		@second_def = second_def
		@third_def = third_def
		@id =@@words.length().+(1)
	end	


	define_method(:first_def) do
		@first_def
	end

	define_method(:second_def) do
		@second_def
	end

	define_method(:third_def) do
		@third_def
	end


	define_singleton_method(:all) do
		@@words
	end

	define_method(:save) do
		@@words.push(self)
	end

	define_singleton_method(:clear) do
		@@words = []
	end

	define_method(:id) do
		@id
	end

	define_singleton_method(:find) do |identification|
		found_word = nil
		@@words.each() do |word|
			if word.id().eql?(identification.to_i())
				found_word = word
			end
		end	
		found_word
	end	
end	

