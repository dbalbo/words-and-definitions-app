
class Word

@@terms = []


define_method(:initialize) do |term|
	@term = term
end	

define_method(:term) do
	@term
end


define_singleton_method(:all) do
	@@terms 
end


define_method(:save) do
	@@terms.push(self)
end

define_singleton_method(:clear) do
	@@terms = []
end

































end
