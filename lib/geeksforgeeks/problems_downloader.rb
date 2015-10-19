class Geeksforgeeks::ProblemsDownloader
  
  def self.download(url = "http://www.geeksforgeeks.org/data-structures/", start_link = "Introduction to Linked List", end_link = "Expression Tree",file_name = "DataStructures.csv.")
    fetcher = Geeksforgeeks::Fetcher.new(url)
    doc = fetcher.fetch_url
    links = Geeksforgeeks::LinkParser.link_to_array doc, start_link, end_link
    Geeksforgeeks::Output.create_csv(links,file_name)
  end
  
end
