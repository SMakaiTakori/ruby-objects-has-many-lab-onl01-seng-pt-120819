class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    posts = []
  end  
  
  def add_post(post)
    self.posts << post
    post.author = self
    
  end
  
  def add_post_by_title(title)
    post = Post.new(title, self)
    self.posts << post 
    post.author = self
    posts << 
    
  end
  
  
  # def add_song_by_name(name)
  #   song = Song.new(name)
  #   self.songs << song
  #   song.artist = self
  #   @@song_count += 1
  # end  
  
  
  
  def posts
    Post.all.select {|post| post.author == self}
  end  
end  