require 'httparty'
require 'nokogiri'
require 'json'
require 'pry'

page = HTTParty.get('https://www.aggarwalbookscompany.com/SubCategory.aspx?SubSubject=Delhi%20Univesity')

parse_page = Nokogiri::HTML(page)

books_array = []

parse_page.css('.name').each do |a|
	bookname = a.text
	books_array << bookname
end

i=1
books_array.each do |book|
	puts " #{book}"
	i += 1
end