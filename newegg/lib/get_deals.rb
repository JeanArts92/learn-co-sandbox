class Deals 
  attr_accessor :name, :price 
  
  @@all = []
  
  def initialize(name = nil, price = nil)
    @name = name
    @price = price
    @@all << self
  end 
  
  def self.today
    doc = Nokogiri::HTML(open("https://www.newegg.com/DailyDeal?cm_sp=Homepage_Dailydeal-_--_-07152019"))
    deal = self.new 
    deal.name = doc.css('div.item-container').css('div.item-info').css('a.item-title')[0].text
    deal.price = doc.css('li.price-current')[0].text.gsub(/[\s+ -]/, "")
    
    deal
    
  end 
  
end