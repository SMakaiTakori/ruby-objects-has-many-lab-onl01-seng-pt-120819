class Post
  
  attr_accessor :title, :author
  
  @@all = []
  @@all_by_title = []
 
  def initialize(title, author)
    @title = title
    @author = author
    @@all << self
    @@all_by_title << self
    
  end  
  
  def self.all
    @@all
  end  
  
  def author_name
    self.author ? self.author.name : nil
  end  
  
  
end  