
class Word

		@@terms = []



		define_method(:initialize) do |term|
			@term = term
			@id =@@terms.length().+(1)
			@words = []
		end	

		define_method(:term) do
			@term
		end


		define_singleton_method(:all) do
			@@terms 
		end


	define_singleton_method(:find) do |id|
			found_term = nil
			@@terms.each() do |term|
					if term.id().eql?(id)
						found_term = term
					end
				end
			found_term
		end


		define_method(:save) do
			@@terms.push(self)
		end

		define_singleton_method(:clear) do
			@@terms = []
		end

		define_method(:id) do
			@id
		end

	

		define_method(:add_words) do |word|
			@words.push(word)	
		end
		
		define_method(:words)do
			@words
		end	
end
