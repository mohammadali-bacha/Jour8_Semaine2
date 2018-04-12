require 'rubygems'
require 'nokogiri'
require 'open-uri'

# http://annuaire-des-mairies.com/95/vaureal.html
#
def get_the_email_of_a_townhal_from_its_webpage(page)
  doc = Nokogiri::HTML(open(page))

  return doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').first.content
 end


def get_all_the_urls_of_val_doise_townhalls
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

 elements = page.css('a.lientxt')
 cities = []
 elements.each do |link|
   cities.push({
     "name" => link.content.capitalize,
     "email" => get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com#{link['href']}"),
   })
 end

 return cities
end


def perform
  puts get_all_the_urls_of_val_doise_townhalls
end
perform
