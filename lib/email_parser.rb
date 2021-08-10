# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse()
        newArray = []
        newArray = emails.split
        counter = 0
        while counter < newArray.length
            newArray[counter].delete_suffix!(',')
            counter += 1
        end
        newArray.uniq
    end
end
