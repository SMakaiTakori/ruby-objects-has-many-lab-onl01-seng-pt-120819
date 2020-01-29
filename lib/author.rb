class Author

  attr_accessor :name
  
  @@post_count = 0

  def initialize(name)
    @name = name
    posts = []
  end  
  
  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title, self)
    self.posts << post 
    post.author = self
    post << post.title
    @@post_count += 1
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end  
  
  def self.post_count
    @@post_count
  end  
  
end  