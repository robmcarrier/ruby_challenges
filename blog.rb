class Blog
    attr_accessor :title, :all_blog_posts, :total_blog_posts

    def initialize
        @created_time = Time.now
        puts "Name your blog:"
        @title = gets.chomp
        @all_blog_posts = []
        @total_blog_posts = 0
    end

    def create_blogpost
        new_blog_post = Blog_Post.new
        puts "New blogpost!"
        @all_blog_posts << new_blog_post
        @total_blog_posts += 1
    end

    def collect_blog_posts
        @all_blog_posts
    end

    def publish(all_blog_posts)
        all_blog_posts.each do |blog_post|
            puts blog_post.title
            puts blog_post.created_at
            puts blog_post.content
        end
    end
end

class Blog_Post
    attr_accessor :title, :created_at, :content

    def initialize
        @created_time = Time.now
        puts "Name your post:"
        @title = gets.chomp

        puts "Contents?"
        @content = gets.chomp
    end

    def edit_blog_content
        puts "New blog title:"
        @title = gets.chomp

        puts "New content:"
        @content = gets.chomp
    end

end

new_blog = Blog.new
first_post = new_blog.create_blogpost
all_posts = new_blog.collect_blog_posts
puts new_blog.inspect
new_blog.publish(all_posts)
