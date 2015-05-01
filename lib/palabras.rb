class Definition


define_method(:initialize) do |first, second, third|
@first = first
@second = second
@third = third
end	


define_method(:first) do
	@first
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