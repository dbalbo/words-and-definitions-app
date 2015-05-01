class Definition

	@@words =[]

	define_method(:initialize) do |first_def, second_def, third_def |
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
end	


# class Definition



# 	attr_reader(:definition1, :definition2, :definition3)

# 	define_method(:initialize) do |attributes|
# 		@definition1 = attributes.fetch(:definition1)
# 		@definition2 = attributes.fetch(:definition2)
# 		@definition3 = attributes.fetch(:definition3)
# 	end	
# end