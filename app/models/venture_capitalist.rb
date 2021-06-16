class VentureCapitalist
attr_accessor :name, :total_worth
@@all =[]
  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.tres_commas_club
  self.all.select{|venture|venture.total_worth >1000000000}
end

  def offer_contract(startup,type,investment)
    FundingRound.new(startup,self,type, investment)
  end
  
 def funding_rounds
    FundingRound.all.select{|fund|fund.venture_capitalist == self}
  end
  def portfolio
    funding_rounds.map{|fund|fund.startup}.uniq
  end
  def biggest_investment
    funding_rounds.max_by{|invest|invest.investment}
  end
  #given a domain string, returns the total amount invested in that domain
  def invested(domain)
    fund= funding_rounds.select{|fund|fund.startup.domain == domain}
      fund.sum{|invest|invest.investment}
    end
end
