class CLI 

def run
  # list_deals
  Scraper.scrape_deals
  
  print_deals
end

def print_deals
  Deals.all.each do |deal|
    print deal.name
  end 
end 

# def list_deals 
#   puts "Here is a list of PC parts we have for sale."
#   Deals.today 
  
# end 

# def menu 
#   "Welcome to the ultimate sale for PC oarts! Which deal would you like to view for today?"
#   list_deals.each_with_index(1) do |deal, index|
  
#   binding.pry
# end

# end 


end 



