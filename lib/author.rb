class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end  
  
  def add_post(post)
    self.posts << post
      
  end  
  
  def posts
    Post.all.select {|post| post.author == self}
  end  
end  