class Dice
    private
    attr_accessor :p1, :p2
    public

    def person_2_try
        ran = rand(10) + 1
        set_person_2(ran)
    end

    def random_generate
        ran = rand(10) + 1
        ran
    end

    def set_person_1(ran)
        @p1 = ran
    end

    def set_person_2(ran)
        @p2 = ran
    end

    def get_person_1
        @p1
    end

    def get_person_2
        @p2
    end

    def win_person()
        check = random_generate
        if get_person_1 == check
            return 0
        elsif get_person_2 == check
            return 1
        else
            return -1
        end
    end

end