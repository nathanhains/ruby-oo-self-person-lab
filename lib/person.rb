class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0,10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)
    end

    def happy? 
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account+= salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene+ 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness = @happiness +2
        self.hygiene = @hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend_name, topic)
        if topic == "politics"
            self.happiness -=2
            friend_name.happiness-=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness +=1
            friend_name.happiness +=1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end







end
