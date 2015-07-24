require 'rubygems'
require 'nokogiri'
require 'open-uri'

#f= File.open("team_dir_here")
doc = Nokogiri::HTML(f)
puts doc.at_css("title").text

doc.css(".member_data_table").each do |active|
	puts active.at_css("a").text
end