class Movie < ApplicationRecord
    has_many :moviecomments
    # validates :title, presence: true
    # validates :star, presence: true
    # validates :description, presence: true
end
