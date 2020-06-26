class FundingRound #join class
    attr_accessor :startup, :venture_capitalist, :type, :investment
    #attr_reader

    @@all = []
    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment
        @@all << self
    end

    def self.all
        @@all
    end
    

end
