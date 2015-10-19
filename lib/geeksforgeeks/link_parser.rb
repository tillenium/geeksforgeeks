class Geeksforgeeks::LinkParser

  def self.link_to_array doc,start_line,end_line
    hrefs = doc.xpath('//li/a[@href]')
    links = []
    start_index = 0
    end_index = 0
    index = 0
    hrefs.each do |x|
      links += [[x.children.text, x.attributes['href'].value]]
      start_index = index if x.children.text.strip == start_line.strip
      end_index = index if x.children.text.strip == end_line.strip
      index += 1
    end
    return links[start_index..end_index]
  end
end
