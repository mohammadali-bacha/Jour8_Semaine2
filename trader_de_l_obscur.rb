require 'rubygems'
require 'nokogiri'
require 'open-uri'

crypto_list = {}
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
crypto_list = {}
cur_name = page.css('a.currency-name-container').text
cur_name.each do |currency| crypto_list <<
cur_rate = page.css('a.price').text
crypto_hash [cur_name] = cur_rate

end

print crypto_list

links_list = []

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
  links_list = []
table_links = page.css("a.lientxt")
table_links.each do |link|
  links_list << "#{link['href'].sub(/./, "http://annuaire-des-mairies.com")}"
end
  # return links_list

mairie_list = {}
links_list.each do |url|
  new_page = Nokogiri::HTML(open(url))
  mairie = new_page.css("/html/body/div/main/section[1]/div/div/div/h1").text
  mairie_mail = new_page.css("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
  mairie_list[mairie] = mairie_mail
end
