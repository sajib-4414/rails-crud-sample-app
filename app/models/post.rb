class Post < ApplicationRecord
  belongs_to :shark # means each post has a Unique shark creator
  validates :body, presence: true, uniqueness: true
end
# from shark to post it is One to Many.
# one shark can have many posts. so each post belongs_to a shark