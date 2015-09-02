class BlogPost
  attr_accessor :title, :text, :author

  def initialize(title, text, author)
    @title  = title
    @text   = text
    @author = author
  end

  def to_s
    "Blog post titled #{@title} written by #{@author}\n\n"+
      @text
  end
end
