class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  validates :name, presence: true
  validates :country, presence: true

  def most_liked
    self.posts.max_by { |post| post.likes }
  end

  def average_age_of_bloggers
    blogger_age_array = self.bloggers.map { |blogger| blogger.age }
    (blogger_age_array.inject(0) { |sum, age| sum + age })/blogger_age_array.count
  end

end
