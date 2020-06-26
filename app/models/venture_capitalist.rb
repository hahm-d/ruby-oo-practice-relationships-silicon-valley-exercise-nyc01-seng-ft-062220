    class VentureCapitalist
        attr_accessor :name
        attr_reader :total_worth
        
        @@all = []
        def initialize(name, total_worth)
            @name = name
            @total_worth = total_worth
            VentureCapitalist.all << self #@@all << self
        end

        def self.all
            @@all
        end

        def self.tres_commas_club
            @@all.select {|capital| capital.total_worth > 1000000000}
        end
        
        def offer_contract(startup, type, amount) #parameters: startup, type, amount. output new funding_round
            #self in this case would be instance with name & total_worth 
            FundingRound.new(startup, self.name, type, amount)
        end

        def funding_rounds
            #return array of all funding_rounds for self
            FundingRound.all.select do |round|
                round.venture_capitalist == self.name #review this !!!! self refers to this class & is limited to this class's methods
            end

        end

        def portfolio #return a unique list of all startups for (self.name?) 
            
        end

        def biggest_investment #return largest funding round given this venture capitalist 
            #funding_round def
        end

        def invested(domain_name) #parameter for domain / return the total amount invested in domain 
            #domain is stored in startup class
        #     Startup.all.filter_map do |ele| #careful when using map, it will also collect nil.... ONLY RUBY v 2.7
        #      p ele.domain
        #         if ele.domain == domain_name #check to see if domains match
        #            ele.founder #collect only names of matching domain_name
        #         end
        #    end
            domain_test = nil
            test1 = Startup.all.map do |ele| #not using filter_map
                   if ele.domain == domain_name #check to see if domains match
                      ele.founder #collect only names of matching domain_name
                   end
              end
              
            founder_names = test1.compact # filters out the nils
            total = 0
            founder_names.each do |founder| #nick 
                # [domains only] 
                FundingRound.all.each do |each|
                    if (each.venture_capitalist == founder && each.startup )
                        p each.investment
                        total += each.investment
                    end
                end
            end
            total
        end

    end
