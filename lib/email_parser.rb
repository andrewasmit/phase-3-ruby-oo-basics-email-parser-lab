# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

    def initialize str
        @str = str
    end

    def parse 
        @newArr = @str.split(',')
        # binding.pry
        @no_space = @newArr.map do |elem|
            # binding.pry
            elem.strip
        end
        @result  = @no_space.map do |elem|
            elem.split(',')
        end
        @result
    end

end
