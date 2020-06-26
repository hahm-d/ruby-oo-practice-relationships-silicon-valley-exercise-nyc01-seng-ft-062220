require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
google1 = Startup.new("Google", "Nick", "www.google.com")
google2 = Startup.new("Google", "David", "www.google.com")
google3 = Startup.new("Google", "William", "www.google.com")
fire1 = Startup.new("FireFox", "Nick", "www.firefox.com")
fire2 = Startup.new("FireFox", "James", "www.firefox.com/teser23")
fire3 = Startup.new("FireFox", "Amy", "www.firfox.com/test")
 #startup, venture_capitalist, type, investment
hit1 = FundingRound.new("Google", "Nick", "invest", 3)
hit2 = FundingRound.new("dev", "Steven", "mom", 20101201)
hit3 = FundingRound.new("Google","William", "savings", 3)
hit4 = FundingRound.new("Google", "Nick", "invest", 3)
hit5 = FundingRound.new("dev", "James", "mom", 20101201)
hit6 = FundingRound.new("Zoom","Amy", "pepp", 123123123)
hit6 = FundingRound.new("Zoom","David", "invest", 1000)

venture1 = VentureCapitalist.new("David", 4000000000) # net_worth
venture2 = VentureCapitalist.new("Nick", 100000)
venture2 = VentureCapitalist.new("Amy", 10)
venture2 = VentureCapitalist.new("James", 10000)
venture2 = VentureCapitalist.new("Nick", 12100000)

 VentureCapitalist.all
 VentureCapitalist.tres_commas_club
 google1.total_funds
 google1.num_funding_rounds
 google1.investors
# google1.big_investors #Nick from Google wants to know all the big investors at Google


venture1.offer_contract("Zoom", "invest", 9999) #added a FundingRound for 'David'
venture1.funding_rounds #should print out an array of 2 entries that belong to David 
p venture1.invested("www.google.com")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line