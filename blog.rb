class Blog
	@@total_blog_posts = 0
	@@blog_posts = []

	def Blog.add_post(post)
		@@blog_posts << post
		@@total_blog_posts += 1
	end

	def self.publish
	    @@blog_posts.each do |post|
	      puts "Title:\n #{post["title"]}"
	      puts "Body:\n #{post["content"]}"
	      puts "Written by #{post["author"]} at #{post["date"]}"
	    end
  	end
end

class BlogPost < Blog

	def self.create_post

		new_post = BlogPost.new

		puts "Enter title of your blog post: "
	    new_title = gets.chomp
	    new_post.set_title= new_title
	    title = new_post.get_title

	    puts "Enter the content of your blog post: "
	    new_content = gets.chomp
	    new_post.set_content = new_content
	    content = new_post.get_content

	    puts "Enter the author of the blog post: "
	    new_author = gets.chomp
	    new_post.set_author = new_author
	    author = new_post.get_author
		
		new_date = Time.now
		new_post.set_publish_date= new_date
		date = new_post.get_publish_date

		post = {"title" => title, "content" => content, "author" => author, "date" => date}

		BlogPost.add_post(post) 

		puts "Do you want to create another blog post? Y/N "
		input = gets.chomp.upcase

		if (input == "Y")
			self.create_post
		elsif 
			puts "Here are all of your blog posts: "
		end
	end

	def set_title=(title)
		@title = title
	end

	def get_title
		return @title
	end

	def set_content=(content)
		@content = content
	end

	def get_content
		return @content
	end

	def set_publish_date=(date)
		@publish_date = date
	end

	def get_publish_date
		return @publish_date
	end

	def set_author=(author)
		@author = author
	end

	def get_author
		return @author
	end
end

BlogPost.create_post
BlogPost.publish


