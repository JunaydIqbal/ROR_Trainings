class Animal
    attr_accessor :noise
end

class Dog < Animal
    def initialize
        @noise = 'bawo bawo'
    end
end

