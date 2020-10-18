require 'nokogiri'
require 'open-uri'
require 'pry'
html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

# binding.pry

courses = doc.css(".title-oE5vT4")

courses.select do |course|
    course.text.strip.split(' ').size == 2
end.each do |course|
    puts course.text.strip
end