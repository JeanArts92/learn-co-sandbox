class Scraper
  
def self.get_page
  doc = Nokogiri::HTML(open("https://www.newegg.com/DailyDeal?cm_sp=Homepage_Dailydeal-_--_-07152019"))
  
  # binding.pry
end 

def self.scrape_deals
 doc = self.get_page
 doc.css('div.item-container').each do |items|
   item_name = items.css('div.item-info').css('a.item-title').text
   item_price = items.css('li.price-current').text.gsub(/[\s+ -]/, "")
   
   
  # binding.pry
 end 
  
end 
  
  
end 

# item_title = doc.css('div.item-container').css('div.item-info').css('a.item-title')[0].text

# item_price = doc.css('li.price-current')[0].text.gsub(/[\s+ -]/, "")
  