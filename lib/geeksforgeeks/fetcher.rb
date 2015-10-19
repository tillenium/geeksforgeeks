
class Geeksforgeeks::Fetcher
  attr_accessor :url
  
  def initialize(url = "")
    @url = url
  end

  def fetch_url
    return Nokogiri::HTML(open(@url))
  end
  
end
