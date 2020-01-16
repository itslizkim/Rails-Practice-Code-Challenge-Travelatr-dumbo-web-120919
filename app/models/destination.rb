class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def most_recent
        self.posts.last(5)
    end

    def average_age
        num_bloggers = self.bloggers.uniq.length
        ages_sum = self.bloggers.uniq.sum {|b| b.age}
        ages_sum/num_bloggers
    end

end
