class Post
  
  attr_accessor :title, :author
  
  @@all = []
  @@add_post_by_title = []
  
  def initialize(title)
    @title = title
    @@all << self
    @@add_post_by_title << self
    
  end  
  
  def self.all
    @@all
  end  
  
  def author_name
    self.author ? self.author.name : nil
  end  

end  