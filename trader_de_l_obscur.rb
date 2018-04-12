require 'rubygems'
require 'nokogiri'
require 'open-uri'

def extract_currencies
  crypto_list = {}
  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
  crypto_list = {}
  elements = page.css('#currencies-all tbody tr')

  currencies = []
  elements.each do |element|
    currencies.push({
      "name" => element.css('.currency-name-container').text,
      "price" => element.css('.price').text
    })
  end

  return currencies
end

while 1 do
  puts extract_currencies
  sleep 3600
end

