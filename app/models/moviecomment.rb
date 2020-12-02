class Moviecomment < ApplicationRecord
    belongs_to :user
    belongs_to :movie
    validates :title, presence: true
    validates :star, presence: true
    validates :description, presence: true
end
