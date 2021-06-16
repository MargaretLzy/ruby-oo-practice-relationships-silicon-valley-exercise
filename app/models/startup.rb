class Startup
attr_accessor :name
attr_reader :founder, :domain
@@all =[]
  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def self.all
    @@all
  end
  
  def pivot(name, domain)
    @name= name
    @domain = domain
  end
  
  def self.find_by_founder(founder)
    self.all.find{|startup| startup.founder == founder}
  end
  def self.domains
    self.all.map{|startup| startup.domains}
  end
  def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(self, venture_capitalist, type,investment)
  end
  def fundingrounds
    FundingRound.all.select{|fund|fund.startup == self}
  end
  
  def num_funding_rounds
    fundingrounds.count
  end
  def total_funds
    fundingrounds.sum{|fundinground|fundinground.investment}
  end
  def investors
    fundingrounds.map{|fund| fund.venture_capitalist}.uniq
  end
  def big_investors
    investors.select{|investor| VentureCapitalist.tres_commas_club.include? (investor)}.uniq
  end
end
