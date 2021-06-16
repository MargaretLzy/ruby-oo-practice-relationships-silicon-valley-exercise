require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1=Startup.new("Apple","Steve Jobs","technology")
s2=Startup.new("Vassar","Matthew Vassar","education")
s3=Startup.new("Coco","Minnie Mouse","Bubble Tea")

v1= VentureCapitalist.new("Elon Musk", 50000000000)
v2= VentureCapitalist.new("Jennifer Yu",100000000)
v3= VentureCapitalist.new("Dinsey", 998748390)
v5= VentureCapitalist.new("Bill Gates", 10000000000)

f1= FundingRound.new(s1,v1,"Series A",900000)
f5= FundingRound.new(s1,v2,"Pre-Seed",1000)
f2= FundingRound.new(s1,v2,"Seed",10000)
f3= FundingRound.new(s2,v1,"Series B",60000)
f4= FundingRound.new(s3,v2,"Pre-Seed",8000)
f6= FundingRound.new(s3,v3,"Series B",18000)
f6= FundingRound.new(s1,v3,"Series C",8000)
f7= FundingRound.new(s3,v5,"Series B",18000)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
