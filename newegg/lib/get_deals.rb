class Deals 
  attr_accessor :name, :price 
  
  @@all = []
  
  def self.all 
    @@all
  end 
  
  def save
    @@all << self 
  end

end

# def initialize(name = nil, price = nil)
  #   @name = name
  #   @price = price
  #   @@all << self
  # end 
  
  # def self.get_page
  # doc = Nokogiri::HTML(open("https://www.newegg.com/DailyDeal?cm_sp=Homepage_Dailydeal-_--_-07152019"))
  # end
  
  
    
  # def self.scrape_newegg
  # doc = Nokogiri::HTML(open("https://www.newegg.com/DailyDeal?cm_sp=Homepage_Dailydeal-_--_-07152019"))
  
  # doc.css('div.item-container').collect do |items|
    
  # name = items.css('div.item-info').css('a.item-title').text
  # price = items.css('li.price-current').text.gsub(/[\s+ -]/, "")
  
  # Scraper.
   
  # deal = self.new
  # deal.name = name 
  # deal.price = price
  # deal