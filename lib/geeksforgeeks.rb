require 'open-uri'
require 'nokogiri'
require 'csv'

class Geeksforgeeks

  def self.data_structures(url = "http://www.geeksforgeeks.org/data-structures/")
    ProblemsDownloader.download
  end

  def self.algorithms
    ProblemsDownloader.download "http://www.geeksforgeeks.org/fundamentals-of-algorithms/", "Asymptotic Analysis", "Print all pairs of anagrams in a given array of strings", "Algorithms.csv"
  end

  def self.download_page_question(url,start_link,end_link,file_name)
    ProblemsDownloader.download url,start_link,end_link,file_name
  end
  
end

require 'geeksforgeeks/fetcher'
require 'geeksforgeeks/link_parser'
require 'geeksforgeeks/output'
require 'geeksforgeeks/problems_downloader'
