require 'pry'

class Author
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
     end

    def self.all
        @@ll
    end

    def posts
        Post.all.select do |author_instance|
            author_instance.author == self
            # binding.pry
        end
    end

    def add_post(post_to_add)
        post_needed = Post.all.find do |post_instance|
            post_to_add == post_instance
        end
        post_needed.author = self
    end

    def add_post_by_title(post_to_add)
        Post.new(post_to_add).author =self
        
        # binding.pry
    end

    def self.post_count
        Post.all.length
    end
end

