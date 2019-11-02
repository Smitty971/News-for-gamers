require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'

require_relative './news_for_gamers/scraper'
require_relative './news_for_gamers/article'
require_relative './news_for_gamers/cli'
require_relative './news_for_gamers/version'


module NewsForGamers
  class Error < StandardError; end
  # Your code goes here...
end