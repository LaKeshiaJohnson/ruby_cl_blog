class Blog
	@@total_blog_posts = 0

	@@blog_posts = []
end

class BlogPost < Blog

	def set_title=(title)
		@title = title
	end

	def set_content=(content)
		@content = content
	end

	def set_publish_date(date)
		@publish_date = date
	end

	def set_author=(author)
		@author = author
	end

	def add_post(post)
		@@total_blog_posts += 1
	end

	def create_post()
end

puts "Do you want to create another blog post? Y/N "
input = gets.chomp.upcase

if (input == "Y")
	puts "Enter a blog title "
	title = gets.chomp

	puts "Enter the content of your post "
	content = gets.chomp

	puts "Enter name of blog post author "
	author = gets.chomp
elsif 
	puts "Have a good day!"
end

post = {"title" => , "content" => , "author" => , "date" => }
