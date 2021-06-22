class Animal
    attr_accessor :noise

    def sound
        puts "by default sound"
    end
end

class Dog < Animal
    def initialize
        @noise = 'bawo bawo'
    end

    def sound
        puts "Dog sound: bawo bawo"
        super
    end
end

class Cow < Animal
    def initialize(var = 'ban ban')
        @noise = var
    end

    def sound
        puts "Cow sound is: bann bannn"
        super
    end
end