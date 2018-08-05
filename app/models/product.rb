class Product < ApplicationRecord
  has_many :comments
  def self.search(search_term)
    if Rails.env.development?
      Product.where("name LIKE?", "%#{search_term}%")

    elsif Rails.env.production?
      Product.where("name ilike ?","%#{search_term}%")
    end
  end
  def highest_rating_comment
    comments.rating_desc.first
  end
  def lowest_rating_comment
    comments.rating_desc.last
  end
  def highest_rating_comment
    comments.rating_desc.first
  end
  def average_rating
    comments.average(:rating).to_f
  end
  validates :name, presence: true
end
def views
  $redis.get("product:#{id}") # this is equivalent to 'GET product:1'
end

def viewed
  logger.debug "BF: inside viewed! method of Product model..."
  $redis.incr("product:#{id}") # this is equivalent to 'INC product:1'
end
