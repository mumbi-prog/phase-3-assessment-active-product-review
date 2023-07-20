class Product < ActiveRecord::Base
    
  has_many :reviews
  has_many :users, through: :reviews

  def leave_review(user_attributes, star_rating, comment)
    user = User.find_or_create_by(user_attributes)
    Review.create(user: user, product: self, star_rating: star_rating, comment: comment)
  end

  def print_all_reviews
    reviews.each do |review|
      puts "Review for #{name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
    end
  end

  def average_rating
    reviews.average(:star_rating).to_f
  end
end