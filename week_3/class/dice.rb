class Dice
    private
    attr_accessor :p1, :p2
    public
    def person_1_try
        ran = rand(6) + 1
        set_person_1(ran)
    end

    def person_2_try
        ran = rand(6) + 1
        set_person_2(ran)
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

    def win_person(p1, p2)
        if p1 == get_person_1
            return 0
        elsif p2 == get_person_2
            return 1
        else
            return -1
        end
    end

end