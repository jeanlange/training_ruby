require_relative 'blog_post.rb'

class AnonymousBlogPost < BlogPost
  def initialize(*args)
    super(*args)
    @text = @text.gsub('axe', 'hammer')
    @author = 'booo'
  end
end

body_text = ''
10.times do |n|
  body_text += "#{n+1}). with an axe\n"
end

def anonymous_posts_on?
  true
end

post_type = BlogPost
post_type = AnonymousBlogPost if anonymous_posts_on?

post = post_type.send(:new, '10 ways to cut a coconut in
                             half',body_text,'Justin')
puts post.to_s
