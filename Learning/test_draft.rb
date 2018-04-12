require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('http://www.penser-entrepreunariat.fr/?page_id=120'))

page.css('#post-120 > ul').each do |el|
   puts el.text,
end







=begin
class RedditScraper

  def initialize
    @headline = []
    @agent = Mechanize.new
  end

  def fetch_reddit_headlines
    mech_page = @agent.get('http://www.reddit.com/r/ruby')

    num_pages_to_scrape = 10
    count = 0

    while(num_pages_to_scrape
=begin
require 'rubygems'
require 'nokogiri'
require 'open-uri'
=end
=begin
PAGE_URL = "http://ruby.bastardsbook.com/files/hello-webpage.html"
=end
=begin
page = Nokogiri::HTML(RestClient.get("http://en.wikipedia.org/"))
puts page.class   # => Nokogiri::HTML::Docum
=end
=begin
page = Nokogiri::HTML(open("http://ruby.bastardsbook.com/files/hello-webpage.html"))
puts page.class   # => Nokogiri::HTML::Document
=end
