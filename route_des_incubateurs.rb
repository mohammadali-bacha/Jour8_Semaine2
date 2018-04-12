require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('http://www.penser-entrepreunariat.fr/?page_id=120'))

page.css('#post-120 > ul').each do |el|
   puts el.text
end
