class Scraper 
  
def self.get_page
  doc = Nokogiri::HTML(open("https://www.newegg.com/DailyDeal?cm_sp=Homepage_Dailydeal-_--_-07152019"))
  
  # binding.pry
end 

def self.scrape_deals
doc = self.get_page
doc.css('div.item-container').each do |items|
  name = items.css('div.item-info').css('a.item-title').text
  price = items.css('li.price-current').text.gsub(/[\s+ -]/, "")
   
  deal = Deals.new 
  deal.name = name 
  deal.price = price
  deal.save
end 
  
end 
  
  
end 

# item_title = doc.css('div.item-container').css('div.item-info').css('a.item-title')[0].text

# item_price = doc.css('li.price-current')[0].text.gsub(/[\s+ -]/, "")
  