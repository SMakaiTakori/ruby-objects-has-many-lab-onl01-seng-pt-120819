class Author

  attr_accessor :name
  
  @@post_count = 1

  def initialize(name)
    @name = name
    @posts = []
  end  
  
  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title, self)
    @@post_count += 1
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end  
  
  def posts_by_title
    authors_posts = []
    Post.all_by_title.each do |post|
      if post.author == self 
        authors_posts << post.title 
      end  
    end
    authors_posts
  end 
  
  def self.post_count
    @@post_count
  end  
  
end  