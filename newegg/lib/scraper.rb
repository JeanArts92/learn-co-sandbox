require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
def get_page
  doc = Nokogiri::HTML(open("https://www.newegg.com/DailyDeal?cm_sp=Homepage_Dailydeal-_--_-07122019"))
  
  binding.pry
end 
  
  
end 
  
Scraper.new.get_page