require 'rubygems'
require 'nokogiri'
require 'open-uri'
#j'utilise http://ruby-doc.com/ pour récupérer les objets de Nokogiri
def extract_currencies
  crypto_list = {}
  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
  crypto_list = {}
  elements = page.css('#currencies-all tbody tr')
#j'utilise http://ruby-doc.com/ pour récupérer les objets de Nokogiri
#on créé l'array curriences que l'on veut récupérer
  currencies = []
  elements.each do |element|
    currencies.push({
      #dans l'array currencies les 2 seuls qui nous intéresse sont price et name
      #pour les récupérer dans l'inspecteur >Network>Copy>Copy Elements
      #on les passe dans les ()
      "name" => element.css('.currency-name-container').text,
      "price" => element.css('.price').text
    })
  end
#on rappelle la currencies uniquement
  return currencies
end
#afin de relancer un rappel au serveur du site web
#on repasse la function utilisée au tout début
#on set en secondes ici 3600 mais on peut choisir
#le script ne se fermera pas tant qu'il est allumé dans
#le CLI / Faire CTR+C ou fermer la console au choix.
while 1 do
  puts extract_currencies
  sleep 3600
end
