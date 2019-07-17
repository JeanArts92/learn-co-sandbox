class CLI 

def run
  list_deals
  # Scraper.scrape_deals
  
  binding.pry
end

def list_deals 
  puts "Here is a list of PC parts we have for sale."
  Deals.today 
  
end 

def menu 
  
  
end 

end

