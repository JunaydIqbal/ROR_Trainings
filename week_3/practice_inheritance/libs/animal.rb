class Animal
    attr_accessor :noise
end

class Dog < Animal
    def initialize
        @noise = 'bawo bawo'
    end
end

class Cow < Animal
    def initialize(var = 'ban ban')
        @noise = var
    end
end