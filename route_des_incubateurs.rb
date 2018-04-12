require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('http://www.penser-entrepreunariat.fr/?page_id=120'))


#On récupère le code css dans l'inspecteur bouton droit dans
#Elements de l'inspecteur sur la ligne qui nous intéresse
#puis Copy > Copy element on le passe dans () de page.css
#on a isolé les données qui nous intéresse il ne reste plus
#qu'à les afficher
#On a pas récupérer les codes postaux car pas présent sur
# le site sélectionné voir url dans page /open
page.css('#post-120 > ul').each do |el|
   puts el.text
end
